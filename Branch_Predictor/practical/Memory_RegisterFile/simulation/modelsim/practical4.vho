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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/16/2024 15:22:28"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	RegisterFile IS
    PORT (
	RegOut1 : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK : IN std_logic;
	WriteReg : IN std_logic;
	Register3 : IN std_logic_vector(2 DOWNTO 0);
	Data : IN std_logic_vector(7 DOWNTO 0);
	Register1 : IN std_logic_vector(2 DOWNTO 0);
	RegOut2 : OUT std_logic_vector(7 DOWNTO 0);
	Register2 : IN std_logic_vector(2 DOWNTO 0)
	);
END RegisterFile;

-- Design Ports Information
-- RegOut1[7]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[6]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[5]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[4]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[3]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[2]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[1]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut1[0]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[7]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[6]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[5]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[4]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[2]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RegOut2[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Register1[1]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register1[0]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register1[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register2[1]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register2[0]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register2[2]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[7]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[6]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[5]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[4]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register3[1]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register3[2]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteReg	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Register3[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RegisterFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegOut1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_WriteReg : std_logic;
SIGNAL ww_Register3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Register1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RegOut2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Register2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \WriteReg~combout\ : std_logic;
SIGNAL \inst18|inst9~0_combout\ : std_logic;
SIGNAL \inst12|inst9~combout\ : std_logic;
SIGNAL \inst12|inst~regout\ : std_logic;
SIGNAL \inst13|inst9~combout\ : std_logic;
SIGNAL \inst|inst9~combout\ : std_logic;
SIGNAL \inst13|inst~regout\ : std_logic;
SIGNAL \inst|inst~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe16~0\ : std_logic;
SIGNAL \inst14|inst9~combout\ : std_logic;
SIGNAL \inst14|inst~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe16~regout\ : std_logic;
SIGNAL \inst18|inst9~combout\ : std_logic;
SIGNAL \inst18|inst~regout\ : std_logic;
SIGNAL \inst17|inst9~combout\ : std_logic;
SIGNAL \inst17|inst~regout\ : std_logic;
SIGNAL \inst16|inst9~combout\ : std_logic;
SIGNAL \inst15|inst9~combout\ : std_logic;
SIGNAL \inst16|inst~regout\ : std_logic;
SIGNAL \inst15|inst~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe17~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe17~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[7]~0\ : std_logic;
SIGNAL \inst17|inst1~regout\ : std_logic;
SIGNAL \inst18|inst1~regout\ : std_logic;
SIGNAL \inst16|inst1~regout\ : std_logic;
SIGNAL \inst15|inst1~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe15~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe15~regout\ : std_logic;
SIGNAL \inst14|inst1~regout\ : std_logic;
SIGNAL \inst13|inst1~regout\ : std_logic;
SIGNAL \inst|inst1~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe14~0\ : std_logic;
SIGNAL \inst12|inst1~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe14~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst14|inst2~regout\ : std_logic;
SIGNAL \inst12|inst2~regout\ : std_logic;
SIGNAL \inst13|inst2~regout\ : std_logic;
SIGNAL \inst|inst2~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe12~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe12~regout\ : std_logic;
SIGNAL \inst18|inst2~regout\ : std_logic;
SIGNAL \inst17|inst2~regout\ : std_logic;
SIGNAL \inst16|inst2~regout\ : std_logic;
SIGNAL \inst15|inst2~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe13~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe13~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst18|inst3~regout\ : std_logic;
SIGNAL \inst17|inst3~regout\ : std_logic;
SIGNAL \inst16|inst3~regout\ : std_logic;
SIGNAL \inst15|inst3~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe11~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe11~regout\ : std_logic;
SIGNAL \inst12|inst3~regout\ : std_logic;
SIGNAL \inst13|inst3~regout\ : std_logic;
SIGNAL \inst|inst3~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe10~0\ : std_logic;
SIGNAL \inst14|inst3~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe10~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst17|inst4~regout\ : std_logic;
SIGNAL \inst18|inst4~regout\ : std_logic;
SIGNAL \inst16|inst4~regout\ : std_logic;
SIGNAL \inst15|inst4~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe9~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst14|inst4~regout\ : std_logic;
SIGNAL \inst12|inst4~regout\ : std_logic;
SIGNAL \inst13|inst4~regout\ : std_logic;
SIGNAL \inst|inst4~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe8~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst18|inst5~regout\ : std_logic;
SIGNAL \inst17|inst5~regout\ : std_logic;
SIGNAL \inst16|inst5~regout\ : std_logic;
SIGNAL \inst15|inst5~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe7~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst12|inst5~regout\ : std_logic;
SIGNAL \inst14|inst5~regout\ : std_logic;
SIGNAL \inst13|inst5~regout\ : std_logic;
SIGNAL \inst|inst5~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe6~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst13|inst6~regout\ : std_logic;
SIGNAL \inst|inst6~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe4~0\ : std_logic;
SIGNAL \inst14|inst6~regout\ : std_logic;
SIGNAL \inst12|inst6~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst17|inst6~regout\ : std_logic;
SIGNAL \inst18|inst6~regout\ : std_logic;
SIGNAL \inst16|inst6~regout\ : std_logic;
SIGNAL \inst15|inst6~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe5~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst18|inst7~regout\ : std_logic;
SIGNAL \inst17|inst7~regout\ : std_logic;
SIGNAL \inst16|inst7~regout\ : std_logic;
SIGNAL \inst15|inst7~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe3~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst14|inst7~regout\ : std_logic;
SIGNAL \inst12|inst7~regout\ : std_logic;
SIGNAL \inst13|inst7~regout\ : std_logic;
SIGNAL \inst|inst7~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe2~0\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe2~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe16~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe16~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe17~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe17~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[7]~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe15~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe15~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe14~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe14~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe13~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe13~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe12~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe12~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe10~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe10~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe11~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe11~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe8~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe9~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe7~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe6~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe4~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe5~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe3~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe2~0\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe2~regout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|dffe1a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Register1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Register3~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Register2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|LPM_MUX_component|auto_generated|dffe1a\ : std_logic_vector(2 DOWNTO 0);

BEGIN

RegOut1 <= ww_RegOut1;
ww_CLOCK <= CLOCK;
ww_WriteReg <= WriteReg;
ww_Register3 <= Register3;
ww_Data <= Data;
ww_Register1 <= Register1;
RegOut2 <= ww_RegOut2;
ww_Register2 <= Register2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register1(0),
	combout => \Register1~combout\(0));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register3(0),
	combout => \Register3~combout\(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register3(2),
	combout => \Register3~combout\(2));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register3(1),
	combout => \Register3~combout\(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteReg~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WriteReg,
	combout => \WriteReg~combout\);

-- Location: LC_X2_Y3_N3
\inst18|inst9~0\ : maxii_lcell
-- Equation(s):
-- \inst18|inst9~0_combout\ = (((\WriteReg~combout\ & \CLOCK~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \WriteReg~combout\,
	datad => \CLOCK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst18|inst9~0_combout\);

-- Location: LC_X2_Y3_N7
\inst12|inst9\ : maxii_lcell
-- Equation(s):
-- \inst12|inst9~combout\ = LCELL((\Register3~combout\(0) & (!\Register3~combout\(2) & (!\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(0),
	datab => \Register3~combout\(2),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst9~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(7),
	combout => \Data~combout\(7));

-- Location: LC_X3_Y3_N2
\inst12|inst\ : maxii_lcell
-- Equation(s):
-- \inst12|inst~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst~regout\);

-- Location: LC_X2_Y3_N6
\inst13|inst9\ : maxii_lcell
-- Equation(s):
-- \inst13|inst9~combout\ = LCELL((!\Register3~combout\(0) & (!\Register3~combout\(2) & (\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(0),
	datab => \Register3~combout\(2),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst9~combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register1(1),
	combout => \Register1~combout\(1));

-- Location: LC_X4_Y3_N5
\inst|inst9\ : maxii_lcell
-- Equation(s):
-- \inst|inst9~combout\ = LCELL((!\Register3~combout\(0) & (!\Register3~combout\(2) & (!\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(0),
	datab => \Register3~combout\(2),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst9~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register2(0),
	combout => \Register2~combout\(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register2(1),
	combout => \Register2~combout\(1));

-- Location: LC_X4_Y3_N9
\inst13|inst\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe16~0\ = (\Register1~combout\(1) & ((\Register1~combout\(0)) # ((B3_inst)))) # (!\Register1~combout\(1) & (!\Register1~combout\(0) & ((\inst|inst~regout\))))
-- \inst13|inst~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe16~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \Register1~combout\(0),
	datac => \Data~combout\(7),
	datad => \inst|inst~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe16~0\,
	regout => \inst13|inst~regout\);

-- Location: LC_X4_Y3_N1
\inst|inst\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe16~0\ = (\Register2~combout\(0) & (\Register2~combout\(1))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & ((\inst13|inst~regout\))) # (!\Register2~combout\(1) & (B1_inst))))
-- \inst|inst~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe16~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(7),
	datad => \inst13|inst~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe16~0\,
	regout => \inst|inst~regout\);

-- Location: LC_X2_Y3_N4
\inst14|inst9\ : maxii_lcell
-- Equation(s):
-- \inst14|inst9~combout\ = LCELL((\Register3~combout\(0) & (!\Register3~combout\(2) & (\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(0),
	datab => \Register3~combout\(2),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst9~combout\);

-- Location: LC_X3_Y4_N5
\inst14|inst\ : maxii_lcell
-- Equation(s):
-- \inst14|inst~regout\ = DFFEAS(GND, GLOBAL(\inst14|inst9~combout\), VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datac => \Data~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst~regout\);

-- Location: LC_X3_Y3_N0
\inst11|LPM_MUX_component|auto_generated|dffe16\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe16~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe16~0\ & ((\inst14|inst~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe16~0\ & (\inst12|inst~regout\)))) 
-- # (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe16~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(0),
	datab => \inst12|inst~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe16~0\,
	datad => \inst14|inst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe16~regout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register1(2),
	combout => \Register1~combout\(2));

-- Location: LC_X2_Y2_N1
\inst18|inst9\ : maxii_lcell
-- Equation(s):
-- \inst18|inst9~combout\ = LCELL((\Register3~combout\(0) & (\Register3~combout\(2) & (\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(0),
	datab => \Register3~combout\(2),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst18|inst9~combout\);

-- Location: LC_X2_Y2_N2
\inst18|inst\ : maxii_lcell
-- Equation(s):
-- \inst18|inst~regout\ = DFFEAS(GND, \inst18|inst9~combout\, VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datac => \Data~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst~regout\);

-- Location: LC_X3_Y2_N9
\inst17|inst9\ : maxii_lcell
-- Equation(s):
-- \inst17|inst9~combout\ = LCELL((!\Register3~combout\(0) & (\Register3~combout\(2) & (\inst18|inst9~0_combout\ & \Register3~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(0),
	datab => \Register3~combout\(2),
	datac => \inst18|inst9~0_combout\,
	datad => \Register3~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|inst9~combout\);

-- Location: LC_X3_Y2_N5
\inst17|inst\ : maxii_lcell
-- Equation(s):
-- \inst17|inst~regout\ = DFFEAS(GND, \inst17|inst9~combout\, VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datac => \Data~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst~regout\);

-- Location: LC_X5_Y2_N4
\inst16|inst9\ : maxii_lcell
-- Equation(s):
-- \inst16|inst9~combout\ = LCELL((\Register3~combout\(2) & (\Register3~combout\(0) & (!\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(2),
	datab => \Register3~combout\(0),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst16|inst9~combout\);

-- Location: LC_X5_Y2_N2
\inst15|inst9\ : maxii_lcell
-- Equation(s):
-- \inst15|inst9~combout\ = LCELL((\Register3~combout\(2) & (!\Register3~combout\(0) & (!\Register3~combout\(1) & \inst18|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3~combout\(2),
	datab => \Register3~combout\(0),
	datac => \Register3~combout\(1),
	datad => \inst18|inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst15|inst9~combout\);

-- Location: LC_X2_Y3_N1
\inst16|inst\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe17~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst~regout\))))
-- \inst16|inst~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe17~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(7),
	datad => \inst15|inst~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe17~0\,
	regout => \inst16|inst~regout\);

-- Location: LC_X2_Y3_N8
\inst15|inst\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe17~0\ = (\Register2~combout\(0) & ((\Register2~combout\(1)) # ((\inst16|inst~regout\)))) # (!\Register2~combout\(0) & (!\Register2~combout\(1) & (B5_inst)))
-- \inst15|inst~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe17~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(7),
	datad => \inst16|inst~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe17~0\,
	regout => \inst15|inst~regout\);

-- Location: LC_X3_Y3_N3
\inst11|LPM_MUX_component|auto_generated|dffe17\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe17~regout\ = DFFEAS((\inst11|LPM_MUX_component|auto_generated|dffe17~0\ & ((\inst18|inst~regout\) # ((!\Register1~combout\(1))))) # (!\inst11|LPM_MUX_component|auto_generated|dffe17~0\ & (((\inst17|inst~regout\ 
-- & \Register1~combout\(1))))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst18|inst~regout\,
	datab => \inst17|inst~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe17~0\,
	datad => \Register1~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe17~regout\);

-- Location: LC_X3_Y3_N8
\inst11|LPM_MUX_component|auto_generated|dffe1a[2]\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[7]~0\ = ((F1_dffe1a[2] & ((\inst11|LPM_MUX_component|auto_generated|dffe17~regout\))) # (!F1_dffe1a[2] & (\inst11|LPM_MUX_component|auto_generated|dffe16~regout\)))
-- \inst11|LPM_MUX_component|auto_generated|dffe1a\(2) = DFFEAS(\inst11|LPM_MUX_component|auto_generated|result_node[7]~0\, GLOBAL(\CLOCK~combout\), VCC, , , \Register1~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|dffe16~regout\,
	datac => \Register1~combout\(2),
	datad => \inst11|LPM_MUX_component|auto_generated|dffe17~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[7]~0\,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(6),
	combout => \Data~combout\(6));

-- Location: LC_X3_Y2_N1
\inst17|inst1\ : maxii_lcell
-- Equation(s):
-- \inst17|inst1~regout\ = DFFEAS((((\Data~combout\(6)))), \inst17|inst9~combout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datad => \Data~combout\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst1~regout\);

-- Location: LC_X2_Y2_N6
\inst18|inst1\ : maxii_lcell
-- Equation(s):
-- \inst18|inst1~regout\ = DFFEAS(GND, \inst18|inst9~combout\, VCC, , , \Data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datac => \Data~combout\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst1~regout\);

-- Location: LC_X2_Y3_N2
\inst16|inst1\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe15~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst1)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst1~regout\))))
-- \inst16|inst1~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe15~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(6),
	datad => \inst15|inst1~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe15~0\,
	regout => \inst16|inst1~regout\);

-- Location: LC_X2_Y3_N9
\inst15|inst1\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe15~0\ = (\Register2~combout\(0) & ((\Register2~combout\(1)) # ((\inst16|inst1~regout\)))) # (!\Register2~combout\(0) & (!\Register2~combout\(1) & (B5_inst1)))
-- \inst15|inst1~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe15~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(6),
	datad => \inst16|inst1~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe15~0\,
	regout => \inst15|inst1~regout\);

-- Location: LC_X3_Y3_N6
\inst11|LPM_MUX_component|auto_generated|dffe15\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe15~regout\ = DFFEAS((\Register1~combout\(1) & ((\inst11|LPM_MUX_component|auto_generated|dffe15~0\ & ((\inst18|inst1~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe15~0\ & 
-- (\inst17|inst1~regout\)))) # (!\Register1~combout\(1) & (((\inst11|LPM_MUX_component|auto_generated|dffe15~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(1),
	datab => \inst17|inst1~regout\,
	datac => \inst18|inst1~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe15~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe15~regout\);

-- Location: LC_X5_Y3_N0
\inst14|inst1\ : maxii_lcell
-- Equation(s):
-- \inst14|inst1~regout\ = DFFEAS((((\Data~combout\(6)))), GLOBAL(\inst14|inst9~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datad => \Data~combout\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst1~regout\);

-- Location: LC_X4_Y3_N6
\inst13|inst1\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe14~0\ = (\Register1~combout\(1) & ((\Register1~combout\(0)) # ((B3_inst1)))) # (!\Register1~combout\(1) & (!\Register1~combout\(0) & ((\inst|inst1~regout\))))
-- \inst13|inst1~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe14~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \Register1~combout\(0),
	datac => \Data~combout\(6),
	datad => \inst|inst1~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe14~0\,
	regout => \inst13|inst1~regout\);

-- Location: LC_X4_Y3_N3
\inst|inst1\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe14~0\ = (\Register2~combout\(0) & (\Register2~combout\(1))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & ((\inst13|inst1~regout\))) # (!\Register2~combout\(1) & (B1_inst1))))
-- \inst|inst1~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe14~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(6),
	datad => \inst13|inst1~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe14~0\,
	regout => \inst|inst1~regout\);

-- Location: LC_X5_Y2_N1
\inst12|inst1\ : maxii_lcell
-- Equation(s):
-- \inst12|inst1~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst1~regout\);

-- Location: LC_X5_Y3_N9
\inst11|LPM_MUX_component|auto_generated|dffe14\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe14~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe14~0\ & (\inst14|inst1~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe14~0\ & 
-- ((\inst12|inst1~regout\))))) # (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe14~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(0),
	datab => \inst14|inst1~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe14~0\,
	datad => \inst12|inst1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe14~regout\);

-- Location: LC_X3_Y3_N5
\inst11|LPM_MUX_component|auto_generated|result_node[6]~1\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ = (\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & (((\inst11|LPM_MUX_component|auto_generated|dffe15~regout\)))) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (((\inst11|LPM_MUX_component|auto_generated|dffe14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst11|LPM_MUX_component|auto_generated|dffe15~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[6]~1_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(5),
	combout => \Data~combout\(5));

-- Location: LC_X5_Y3_N7
\inst14|inst2\ : maxii_lcell
-- Equation(s):
-- \inst14|inst2~regout\ = DFFEAS((((\Data~combout\(5)))), GLOBAL(\inst14|inst9~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datad => \Data~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst2~regout\);

-- Location: LC_X6_Y3_N3
\inst12|inst2\ : maxii_lcell
-- Equation(s):
-- \inst12|inst2~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst2~regout\);

-- Location: LC_X4_Y3_N2
\inst13|inst2\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe12~0\ = (\Register1~combout\(1) & ((\Register1~combout\(0)) # ((B3_inst2)))) # (!\Register1~combout\(1) & (!\Register1~combout\(0) & ((\inst|inst2~regout\))))
-- \inst13|inst2~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe12~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \Register1~combout\(0),
	datac => \Data~combout\(5),
	datad => \inst|inst2~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe12~0\,
	regout => \inst13|inst2~regout\);

-- Location: LC_X4_Y3_N0
\inst|inst2\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe12~0\ = (\Register2~combout\(0) & (\Register2~combout\(1))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & ((\inst13|inst2~regout\))) # (!\Register2~combout\(1) & (B1_inst2))))
-- \inst|inst2~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe12~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(5),
	datad => \inst13|inst2~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe12~0\,
	regout => \inst|inst2~regout\);

-- Location: LC_X5_Y3_N5
\inst11|LPM_MUX_component|auto_generated|dffe12\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe12~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe12~0\ & (\inst14|inst2~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe12~0\ & 
-- ((\inst12|inst2~regout\))))) # (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe12~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(0),
	datab => \inst14|inst2~regout\,
	datac => \inst12|inst2~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe12~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe12~regout\);

-- Location: LC_X7_Y2_N9
\inst18|inst2\ : maxii_lcell
-- Equation(s):
-- \inst18|inst2~regout\ = DFFEAS((((\Data~combout\(5)))), \inst18|inst9~combout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datad => \Data~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst2~regout\);

-- Location: LC_X4_Y2_N6
\inst17|inst2\ : maxii_lcell
-- Equation(s):
-- \inst17|inst2~regout\ = DFFEAS(GND, \inst17|inst9~combout\, VCC, , , \Data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datac => \Data~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst2~regout\);

-- Location: LC_X6_Y2_N5
\inst16|inst2\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe13~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst2)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst2~regout\))))
-- \inst16|inst2~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe13~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(5),
	datad => \inst15|inst2~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe13~0\,
	regout => \inst16|inst2~regout\);

-- Location: LC_X6_Y2_N2
\inst15|inst2\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe13~0\ = (\Register2~combout\(0) & ((\inst16|inst2~regout\) # ((\Register2~combout\(1))))) # (!\Register2~combout\(0) & (((B5_inst2 & !\Register2~combout\(1)))))
-- \inst15|inst2~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe13~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \inst16|inst2~regout\,
	datab => \Register2~combout\(0),
	datac => \Data~combout\(5),
	datad => \Register2~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe13~0\,
	regout => \inst15|inst2~regout\);

-- Location: LC_X7_Y2_N3
\inst11|LPM_MUX_component|auto_generated|dffe13\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe13~regout\ = DFFEAS((\Register1~combout\(1) & ((\inst11|LPM_MUX_component|auto_generated|dffe13~0\ & (\inst18|inst2~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe13~0\ & 
-- ((\inst17|inst2~regout\))))) # (!\Register1~combout\(1) & (((\inst11|LPM_MUX_component|auto_generated|dffe13~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(1),
	datab => \inst18|inst2~regout\,
	datac => \inst17|inst2~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe13~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe13~regout\);

-- Location: LC_X7_Y2_N0
\inst11|LPM_MUX_component|auto_generated|result_node[5]~2\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = ((\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & ((\inst11|LPM_MUX_component|auto_generated|dffe13~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (\inst11|LPM_MUX_component|auto_generated|dffe12~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|dffe12~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	datad => \inst11|LPM_MUX_component|auto_generated|dffe13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(4),
	combout => \Data~combout\(4));

-- Location: LC_X7_Y2_N6
\inst18|inst3\ : maxii_lcell
-- Equation(s):
-- \inst18|inst3~regout\ = DFFEAS(GND, \inst18|inst9~combout\, VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datac => \Data~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst3~regout\);

-- Location: LC_X3_Y2_N6
\inst17|inst3\ : maxii_lcell
-- Equation(s):
-- \inst17|inst3~regout\ = DFFEAS(GND, \inst17|inst9~combout\, VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datac => \Data~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst3~regout\);

-- Location: LC_X6_Y2_N6
\inst16|inst3\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe11~0\ = (\Register1~combout\(1) & (((\Register1~combout\(0))))) # (!\Register1~combout\(1) & ((\Register1~combout\(0) & ((B6_inst3))) # (!\Register1~combout\(0) & (\inst15|inst3~regout\))))
-- \inst16|inst3~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe11~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \inst15|inst3~regout\,
	datac => \Data~combout\(4),
	datad => \Register1~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe11~0\,
	regout => \inst16|inst3~regout\);

-- Location: LC_X6_Y2_N7
\inst15|inst3\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe11~0\ = (\Register2~combout\(1) & (\Register2~combout\(0))) # (!\Register2~combout\(1) & ((\Register2~combout\(0) & ((\inst16|inst3~regout\))) # (!\Register2~combout\(0) & (B5_inst3))))
-- \inst15|inst3~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe11~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(1),
	datab => \Register2~combout\(0),
	datac => \Data~combout\(4),
	datad => \inst16|inst3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe11~0\,
	regout => \inst15|inst3~regout\);

-- Location: LC_X7_Y2_N2
\inst11|LPM_MUX_component|auto_generated|dffe11\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe11~regout\ = DFFEAS((\inst11|LPM_MUX_component|auto_generated|dffe11~0\ & ((\inst18|inst3~regout\) # ((!\Register1~combout\(1))))) # (!\inst11|LPM_MUX_component|auto_generated|dffe11~0\ & 
-- (((\inst17|inst3~regout\ & \Register1~combout\(1))))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst18|inst3~regout\,
	datab => \inst17|inst3~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe11~0\,
	datad => \Register1~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe11~regout\);

-- Location: LC_X6_Y3_N9
\inst12|inst3\ : maxii_lcell
-- Equation(s):
-- \inst12|inst3~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst3~regout\);

-- Location: LC_X4_Y3_N8
\inst13|inst3\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe10~0\ = (\Register1~combout\(1) & (((B3_inst3) # (\Register1~combout\(0))))) # (!\Register1~combout\(1) & (\inst|inst3~regout\ & ((!\Register1~combout\(0)))))
-- \inst13|inst3~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe10~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \inst|inst3~regout\,
	datac => \Data~combout\(4),
	datad => \Register1~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe10~0\,
	regout => \inst13|inst3~regout\);

-- Location: LC_X4_Y3_N7
\inst|inst3\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe10~0\ = (\Register2~combout\(0) & (\Register2~combout\(1))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & ((\inst13|inst3~regout\))) # (!\Register2~combout\(1) & (B1_inst3))))
-- \inst|inst3~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe10~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(4),
	datad => \inst13|inst3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe10~0\,
	regout => \inst|inst3~regout\);

-- Location: LC_X5_Y3_N1
\inst14|inst3\ : maxii_lcell
-- Equation(s):
-- \inst14|inst3~regout\ = DFFEAS(GND, GLOBAL(\inst14|inst9~combout\), VCC, , , \Data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datac => \Data~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst3~regout\);

-- Location: LC_X5_Y3_N8
\inst11|LPM_MUX_component|auto_generated|dffe10\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe10~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe10~0\ & ((\inst14|inst3~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe10~0\ & 
-- (\inst12|inst3~regout\)))) # (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe10~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(0),
	datab => \inst12|inst3~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe10~0\,
	datad => \inst14|inst3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe10~regout\);

-- Location: LC_X7_Y2_N1
\inst11|LPM_MUX_component|auto_generated|result_node[4]~3\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ = ((\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst11|LPM_MUX_component|auto_generated|dffe11~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst11|LPM_MUX_component|auto_generated|dffe10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|dffe11~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	datad => \inst11|LPM_MUX_component|auto_generated|dffe10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[4]~3_combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(3),
	combout => \Data~combout\(3));

-- Location: LC_X3_Y2_N4
\inst17|inst4\ : maxii_lcell
-- Equation(s):
-- \inst17|inst4~regout\ = DFFEAS(GND, \inst17|inst9~combout\, VCC, , , \Data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datac => \Data~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst4~regout\);

-- Location: LC_X2_Y2_N8
\inst18|inst4\ : maxii_lcell
-- Equation(s):
-- \inst18|inst4~regout\ = DFFEAS((((\Data~combout\(3)))), \inst18|inst9~combout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datad => \Data~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst4~regout\);

-- Location: LC_X6_Y2_N3
\inst16|inst4\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe9~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst4)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst4~regout\))))
-- \inst16|inst4~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe9~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(3),
	datad => \inst15|inst4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe9~0\,
	regout => \inst16|inst4~regout\);

-- Location: LC_X6_Y2_N9
\inst15|inst4\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe9~0\ = (\Register2~combout\(1) & (\Register2~combout\(0))) # (!\Register2~combout\(1) & ((\Register2~combout\(0) & ((\inst16|inst4~regout\))) # (!\Register2~combout\(0) & (B5_inst4))))
-- \inst15|inst4~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe9~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(1),
	datab => \Register2~combout\(0),
	datac => \Data~combout\(3),
	datad => \inst16|inst4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe9~0\,
	regout => \inst15|inst4~regout\);

-- Location: LC_X7_Y2_N7
\inst11|LPM_MUX_component|auto_generated|dffe9\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe9~regout\ = DFFEAS((\Register1~combout\(1) & ((\inst11|LPM_MUX_component|auto_generated|dffe9~0\ & ((\inst18|inst4~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe9~0\ & (\inst17|inst4~regout\)))) # 
-- (!\Register1~combout\(1) & (((\inst11|LPM_MUX_component|auto_generated|dffe9~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst17|inst4~regout\,
	datab => \Register1~combout\(1),
	datac => \inst18|inst4~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe9~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe9~regout\);

-- Location: LC_X5_Y1_N0
\inst14|inst4\ : maxii_lcell
-- Equation(s):
-- \inst14|inst4~regout\ = DFFEAS(GND, GLOBAL(\inst14|inst9~combout\), VCC, , , \Data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datac => \Data~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst4~regout\);

-- Location: LC_X5_Y2_N7
\inst12|inst4\ : maxii_lcell
-- Equation(s):
-- \inst12|inst4~regout\ = DFFEAS((((\Data~combout\(3)))), GLOBAL(\inst12|inst9~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datad => \Data~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst4~regout\);

-- Location: LC_X4_Y1_N3
\inst13|inst4\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe8~0\ = (\Register1~combout\(1) & ((\Register1~combout\(0)) # ((B3_inst4)))) # (!\Register1~combout\(1) & (!\Register1~combout\(0) & ((\inst|inst4~regout\))))
-- \inst13|inst4~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe8~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \Register1~combout\(0),
	datac => \Data~combout\(3),
	datad => \inst|inst4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe8~0\,
	regout => \inst13|inst4~regout\);

-- Location: LC_X4_Y1_N2
\inst|inst4\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe8~0\ = (\Register2~combout\(0) & (\Register2~combout\(1))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & ((\inst13|inst4~regout\))) # (!\Register2~combout\(1) & (B1_inst4))))
-- \inst|inst4~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe8~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(3),
	datad => \inst13|inst4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe8~0\,
	regout => \inst|inst4~regout\);

-- Location: LC_X5_Y1_N2
\inst11|LPM_MUX_component|auto_generated|dffe8\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe8~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe8~0\ & (\inst14|inst4~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe8~0\ & ((\inst12|inst4~regout\))))) # 
-- (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe8~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(0),
	datab => \inst14|inst4~regout\,
	datac => \inst12|inst4~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe8~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe8~regout\);

-- Location: LC_X5_Y1_N7
\inst11|LPM_MUX_component|auto_generated|result_node[3]~4\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = ((\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst11|LPM_MUX_component|auto_generated|dffe9~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst11|LPM_MUX_component|auto_generated|dffe8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst11|LPM_MUX_component|auto_generated|dffe9~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(2),
	combout => \Data~combout\(2));

-- Location: LC_X2_Y2_N7
\inst18|inst5\ : maxii_lcell
-- Equation(s):
-- \inst18|inst5~regout\ = DFFEAS(GND, \inst18|inst9~combout\, VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datac => \Data~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst5~regout\);

-- Location: LC_X3_Y2_N2
\inst17|inst5\ : maxii_lcell
-- Equation(s):
-- \inst17|inst5~regout\ = DFFEAS(GND, \inst17|inst9~combout\, VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datac => \Data~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst5~regout\);

-- Location: LC_X3_Y1_N5
\inst16|inst5\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe7~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst5)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst5~regout\))))
-- \inst16|inst5~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe7~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(2),
	datad => \inst15|inst5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe7~0\,
	regout => \inst16|inst5~regout\);

-- Location: LC_X2_Y1_N5
\inst15|inst5\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe7~0\ = (\Register2~combout\(0) & ((\Register2~combout\(1)) # ((\inst16|inst5~regout\)))) # (!\Register2~combout\(0) & (!\Register2~combout\(1) & (B5_inst5)))
-- \inst15|inst5~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe7~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(2),
	datad => \inst16|inst5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe7~0\,
	regout => \inst15|inst5~regout\);

-- Location: LC_X3_Y1_N6
\inst11|LPM_MUX_component|auto_generated|dffe7\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe7~regout\ = DFFEAS((\Register1~combout\(1) & ((\inst11|LPM_MUX_component|auto_generated|dffe7~0\ & (\inst18|inst5~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe7~0\ & ((\inst17|inst5~regout\))))) # 
-- (!\Register1~combout\(1) & (((\inst11|LPM_MUX_component|auto_generated|dffe7~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(1),
	datab => \inst18|inst5~regout\,
	datac => \inst17|inst5~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe7~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe7~regout\);

-- Location: LC_X2_Y2_N0
\inst12|inst5\ : maxii_lcell
-- Equation(s):
-- \inst12|inst5~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst5~regout\);

-- Location: LC_X3_Y2_N0
\inst14|inst5\ : maxii_lcell
-- Equation(s):
-- \inst14|inst5~regout\ = DFFEAS(GND, GLOBAL(\inst14|inst9~combout\), VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datac => \Data~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst5~regout\);

-- Location: LC_X4_Y1_N1
\inst13|inst5\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe6~0\ = (\Register1~combout\(1) & ((\Register1~combout\(0)) # ((B3_inst5)))) # (!\Register1~combout\(1) & (!\Register1~combout\(0) & ((\inst|inst5~regout\))))
-- \inst13|inst5~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe6~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \Register1~combout\(0),
	datac => \Data~combout\(2),
	datad => \inst|inst5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe6~0\,
	regout => \inst13|inst5~regout\);

-- Location: LC_X4_Y1_N9
\inst|inst5\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe6~0\ = (\Register2~combout\(0) & (\Register2~combout\(1))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & ((\inst13|inst5~regout\))) # (!\Register2~combout\(1) & (B1_inst5))))
-- \inst|inst5~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe6~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \Register2~combout\(1),
	datac => \Data~combout\(2),
	datad => \inst13|inst5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe6~0\,
	regout => \inst|inst5~regout\);

-- Location: LC_X3_Y1_N2
\inst11|LPM_MUX_component|auto_generated|dffe6\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe6~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe6~0\ & ((\inst14|inst5~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe6~0\ & (\inst12|inst5~regout\)))) # 
-- (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe6~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(0),
	datab => \inst12|inst5~regout\,
	datac => \inst14|inst5~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe6~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe6~regout\);

-- Location: LC_X3_Y1_N7
\inst11|LPM_MUX_component|auto_generated|result_node[2]~5\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = ((\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst11|LPM_MUX_component|auto_generated|dffe7~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst11|LPM_MUX_component|auto_generated|dffe6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|dffe7~regout\,
	datab => \inst11|LPM_MUX_component|auto_generated|dffe6~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(1),
	combout => \Data~combout\(1));

-- Location: LC_X4_Y1_N7
\inst13|inst6\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe4~0\ = (\Register1~combout\(1) & ((\Register1~combout\(0)) # ((B3_inst6)))) # (!\Register1~combout\(1) & (!\Register1~combout\(0) & ((\inst|inst6~regout\))))
-- \inst13|inst6~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe4~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(1),
	datab => \Register1~combout\(0),
	datac => \Data~combout\(1),
	datad => \inst|inst6~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe4~0\,
	regout => \inst13|inst6~regout\);

-- Location: LC_X4_Y1_N8
\inst|inst6\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe4~0\ = (\Register2~combout\(0) & (((\Register2~combout\(1))))) # (!\Register2~combout\(0) & ((\Register2~combout\(1) & (\inst13|inst6~regout\)) # (!\Register2~combout\(1) & ((B1_inst6)))))
-- \inst|inst6~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe4~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst13|inst6~regout\,
	datac => \Data~combout\(1),
	datad => \Register2~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe4~0\,
	regout => \inst|inst6~regout\);

-- Location: LC_X3_Y2_N7
\inst14|inst6\ : maxii_lcell
-- Equation(s):
-- \inst14|inst6~regout\ = DFFEAS(GND, GLOBAL(\inst14|inst9~combout\), VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datac => \Data~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst6~regout\);

-- Location: LC_X2_Y2_N5
\inst12|inst6\ : maxii_lcell
-- Equation(s):
-- \inst12|inst6~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6~regout\);

-- Location: LC_X3_Y1_N9
\inst11|LPM_MUX_component|auto_generated|dffe4\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe4~regout\ = DFFEAS((\inst11|LPM_MUX_component|auto_generated|dffe4~0\ & (((\inst14|inst6~regout\)) # (!\Register1~combout\(0)))) # (!\inst11|LPM_MUX_component|auto_generated|dffe4~0\ & (\Register1~combout\(0) & 
-- ((\inst12|inst6~regout\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst11|LPM_MUX_component|auto_generated|dffe4~0\,
	datab => \Register1~combout\(0),
	datac => \inst14|inst6~regout\,
	datad => \inst12|inst6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe4~regout\);

-- Location: LC_X3_Y2_N8
\inst17|inst6\ : maxii_lcell
-- Equation(s):
-- \inst17|inst6~regout\ = DFFEAS(GND, \inst17|inst9~combout\, VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datac => \Data~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst6~regout\);

-- Location: LC_X2_Y2_N9
\inst18|inst6\ : maxii_lcell
-- Equation(s):
-- \inst18|inst6~regout\ = DFFEAS(GND, \inst18|inst9~combout\, VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datac => \Data~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6~regout\);

-- Location: LC_X6_Y2_N1
\inst16|inst6\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe5~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst6)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst6~regout\))))
-- \inst16|inst6~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe5~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(1),
	datad => \inst15|inst6~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe5~0\,
	regout => \inst16|inst6~regout\);

-- Location: LC_X6_Y2_N8
\inst15|inst6\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe5~0\ = (\Register2~combout\(1) & (\Register2~combout\(0))) # (!\Register2~combout\(1) & ((\Register2~combout\(0) & ((\inst16|inst6~regout\))) # (!\Register2~combout\(0) & (B5_inst6))))
-- \inst15|inst6~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe5~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(1),
	datab => \Register2~combout\(0),
	datac => \Data~combout\(1),
	datad => \inst16|inst6~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe5~0\,
	regout => \inst15|inst6~regout\);

-- Location: LC_X5_Y2_N6
\inst11|LPM_MUX_component|auto_generated|dffe5\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe5~regout\ = DFFEAS((\Register1~combout\(1) & ((\inst11|LPM_MUX_component|auto_generated|dffe5~0\ & ((\inst18|inst6~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe5~0\ & (\inst17|inst6~regout\)))) # 
-- (!\Register1~combout\(1) & (((\inst11|LPM_MUX_component|auto_generated|dffe5~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register1~combout\(1),
	datab => \inst17|inst6~regout\,
	datac => \inst18|inst6~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe5~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe5~regout\);

-- Location: LC_X5_Y1_N8
\inst11|LPM_MUX_component|auto_generated|result_node[1]~6\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ = ((\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & ((\inst11|LPM_MUX_component|auto_generated|dffe5~regout\))) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (\inst11|LPM_MUX_component|auto_generated|dffe4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst11|LPM_MUX_component|auto_generated|dffe4~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|dffe5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[1]~6_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Data(0),
	combout => \Data~combout\(0));

-- Location: LC_X2_Y2_N4
\inst18|inst7\ : maxii_lcell
-- Equation(s):
-- \inst18|inst7~regout\ = DFFEAS(GND, \inst18|inst9~combout\, VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst18|inst9~combout\,
	datac => \Data~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst7~regout\);

-- Location: LC_X3_Y2_N3
\inst17|inst7\ : maxii_lcell
-- Equation(s):
-- \inst17|inst7~regout\ = DFFEAS((((\Data~combout\(0)))), \inst17|inst9~combout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst9~combout\,
	datad => \Data~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|inst7~regout\);

-- Location: LC_X6_Y2_N0
\inst16|inst7\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe3~0\ = (\Register1~combout\(0) & ((\Register1~combout\(1)) # ((B6_inst7)))) # (!\Register1~combout\(0) & (!\Register1~combout\(1) & ((\inst15|inst7~regout\))))
-- \inst16|inst7~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe3~0\, \inst16|inst9~combout\, VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst16|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(0),
	datad => \inst15|inst7~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe3~0\,
	regout => \inst16|inst7~regout\);

-- Location: LC_X6_Y2_N4
\inst15|inst7\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe3~0\ = (\Register2~combout\(1) & (((\Register2~combout\(0))))) # (!\Register2~combout\(1) & ((\Register2~combout\(0) & (\inst16|inst7~regout\)) # (!\Register2~combout\(0) & ((B5_inst7)))))
-- \inst15|inst7~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe3~0\, \inst15|inst9~combout\, VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst9~combout\,
	dataa => \Register2~combout\(1),
	datab => \inst16|inst7~regout\,
	datac => \Data~combout\(0),
	datad => \Register2~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe3~0\,
	regout => \inst15|inst7~regout\);

-- Location: LC_X5_Y2_N9
\inst11|LPM_MUX_component|auto_generated|dffe3\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe3~regout\ = DFFEAS((\inst11|LPM_MUX_component|auto_generated|dffe3~0\ & ((\inst18|inst7~regout\) # ((!\Register1~combout\(1))))) # (!\inst11|LPM_MUX_component|auto_generated|dffe3~0\ & (((\inst17|inst7~regout\ 
-- & \Register1~combout\(1))))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst18|inst7~regout\,
	datab => \inst17|inst7~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe3~0\,
	datad => \Register1~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe3~regout\);

-- Location: LC_X6_Y4_N2
\inst14|inst7\ : maxii_lcell
-- Equation(s):
-- \inst14|inst7~regout\ = DFFEAS(GND, GLOBAL(\inst14|inst9~combout\), VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst9~combout\,
	datac => \Data~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst7~regout\);

-- Location: LC_X7_Y4_N4
\inst12|inst7\ : maxii_lcell
-- Equation(s):
-- \inst12|inst7~regout\ = DFFEAS(GND, GLOBAL(\inst12|inst9~combout\), VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9~combout\,
	datac => \Data~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst7~regout\);

-- Location: LC_X5_Y4_N4
\inst13|inst7\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe2~0\ = (\Register1~combout\(0) & (\Register1~combout\(1))) # (!\Register1~combout\(0) & ((\Register1~combout\(1) & (B3_inst7)) # (!\Register1~combout\(1) & ((\inst|inst7~regout\)))))
-- \inst13|inst7~regout\ = DFFEAS(\inst11|LPM_MUX_component|auto_generated|dffe2~0\, GLOBAL(\inst13|inst9~combout\), VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9~combout\,
	dataa => \Register1~combout\(0),
	datab => \Register1~combout\(1),
	datac => \Data~combout\(0),
	datad => \inst|inst7~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|dffe2~0\,
	regout => \inst13|inst7~regout\);

-- Location: LC_X5_Y4_N1
\inst|inst7\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe2~0\ = (\Register2~combout\(1) & ((\inst13|inst7~regout\) # ((\Register2~combout\(0))))) # (!\Register2~combout\(1) & (((B1_inst7 & !\Register2~combout\(0)))))
-- \inst|inst7~regout\ = DFFEAS(\inst10|LPM_MUX_component|auto_generated|dffe2~0\, \inst|inst9~combout\, VCC, , , \Data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~combout\,
	dataa => \inst13|inst7~regout\,
	datab => \Register2~combout\(1),
	datac => \Data~combout\(0),
	datad => \Register2~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|dffe2~0\,
	regout => \inst|inst7~regout\);

-- Location: LC_X6_Y4_N9
\inst11|LPM_MUX_component|auto_generated|dffe2\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|dffe2~regout\ = DFFEAS((\Register1~combout\(0) & ((\inst11|LPM_MUX_component|auto_generated|dffe2~0\ & (\inst14|inst7~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe2~0\ & ((\inst12|inst7~regout\))))) # 
-- (!\Register1~combout\(0) & (((\inst11|LPM_MUX_component|auto_generated|dffe2~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst14|inst7~regout\,
	datab => \inst12|inst7~regout\,
	datac => \Register1~combout\(0),
	datad => \inst11|LPM_MUX_component|auto_generated|dffe2~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_MUX_component|auto_generated|dffe2~regout\);

-- Location: LC_X5_Y2_N0
\inst11|LPM_MUX_component|auto_generated|result_node[0]~7\ : maxii_lcell
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = ((\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst11|LPM_MUX_component|auto_generated|dffe3~regout\)) # (!\inst11|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst11|LPM_MUX_component|auto_generated|dffe2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|dffe3~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|dffe1a\(2),
	datad => \inst11|LPM_MUX_component|auto_generated|dffe2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LC_X3_Y3_N7
\inst10|LPM_MUX_component|auto_generated|dffe16\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe16~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe16~0\ & ((\inst14|inst~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe16~0\ & (\inst12|inst~regout\)))) 
-- # (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe16~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst12|inst~regout\,
	datac => \inst14|inst~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe16~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe16~regout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Register2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Register2(2),
	combout => \Register2~combout\(2));

-- Location: LC_X3_Y3_N9
\inst10|LPM_MUX_component|auto_generated|dffe17\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe17~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe17~0\ & ((\inst18|inst~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe17~0\ & (\inst17|inst~regout\)))) 
-- # (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe17~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(1),
	datab => \inst17|inst~regout\,
	datac => \inst18|inst~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe17~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe17~regout\);

-- Location: LC_X3_Y3_N1
\inst10|LPM_MUX_component|auto_generated|dffe1a[2]\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[7]~0\ = ((F2_dffe1a[2] & ((\inst10|LPM_MUX_component|auto_generated|dffe17~regout\))) # (!F2_dffe1a[2] & (\inst10|LPM_MUX_component|auto_generated|dffe16~regout\)))
-- \inst10|LPM_MUX_component|auto_generated|dffe1a\(2) = DFFEAS(\inst10|LPM_MUX_component|auto_generated|result_node[7]~0\, GLOBAL(\CLOCK~combout\), VCC, , , \Register2~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|dffe16~regout\,
	datac => \Register2~combout\(2),
	datad => \inst10|LPM_MUX_component|auto_generated|dffe17~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[7]~0\,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2));

-- Location: LC_X3_Y3_N4
\inst10|LPM_MUX_component|auto_generated|dffe15\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe15~regout\ = DFFEAS((\inst10|LPM_MUX_component|auto_generated|dffe15~0\ & ((\inst18|inst1~regout\) # ((!\Register2~combout\(1))))) # (!\inst10|LPM_MUX_component|auto_generated|dffe15~0\ & 
-- (((\inst17|inst1~regout\ & \Register2~combout\(1))))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst18|inst1~regout\,
	datab => \inst17|inst1~regout\,
	datac => \inst10|LPM_MUX_component|auto_generated|dffe15~0\,
	datad => \Register2~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe15~regout\);

-- Location: LC_X5_Y3_N2
\inst10|LPM_MUX_component|auto_generated|dffe14\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe14~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe14~0\ & (\inst14|inst1~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe14~0\ & 
-- ((\inst12|inst1~regout\))))) # (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe14~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst14|inst1~regout\,
	datac => \inst12|inst1~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe14~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe14~regout\);

-- Location: LC_X5_Y3_N3
\inst10|LPM_MUX_component|auto_generated|result_node[6]~1\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ = ((\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst10|LPM_MUX_component|auto_generated|dffe15~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst10|LPM_MUX_component|auto_generated|dffe14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe15~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[6]~1_combout\);

-- Location: LC_X7_Y2_N4
\inst10|LPM_MUX_component|auto_generated|dffe13\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe13~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe13~0\ & (\inst18|inst2~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe13~0\ & 
-- ((\inst17|inst2~regout\))))) # (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe13~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(1),
	datab => \inst18|inst2~regout\,
	datac => \inst17|inst2~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe13~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe13~regout\);

-- Location: LC_X5_Y3_N4
\inst10|LPM_MUX_component|auto_generated|dffe12\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe12~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe12~0\ & (\inst14|inst2~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe12~0\ & 
-- ((\inst12|inst2~regout\))))) # (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe12~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst14|inst2~regout\,
	datac => \inst12|inst2~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe12~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe12~regout\);

-- Location: LC_X6_Y3_N5
\inst10|LPM_MUX_component|auto_generated|result_node[5]~2\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = ((\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst10|LPM_MUX_component|auto_generated|dffe13~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst10|LPM_MUX_component|auto_generated|dffe12~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe13~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LC_X5_Y3_N6
\inst10|LPM_MUX_component|auto_generated|dffe10\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe10~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe10~0\ & (\inst14|inst3~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe10~0\ & 
-- ((\inst12|inst3~regout\))))) # (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe10~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst14|inst3~regout\,
	datac => \inst12|inst3~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe10~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe10~regout\);

-- Location: LC_X7_Y2_N8
\inst10|LPM_MUX_component|auto_generated|dffe11\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe11~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe11~0\ & ((\inst18|inst3~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe11~0\ & 
-- (\inst17|inst3~regout\)))) # (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe11~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(1),
	datab => \inst17|inst3~regout\,
	datac => \inst18|inst3~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe11~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe11~regout\);

-- Location: LC_X6_Y3_N1
\inst10|LPM_MUX_component|auto_generated|result_node[4]~3\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ = ((\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & ((\inst10|LPM_MUX_component|auto_generated|dffe11~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (\inst10|LPM_MUX_component|auto_generated|dffe10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe10~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[4]~3_combout\);

-- Location: LC_X5_Y1_N9
\inst10|LPM_MUX_component|auto_generated|dffe8\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe8~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe8~0\ & (\inst14|inst4~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe8~0\ & ((\inst12|inst4~regout\))))) # 
-- (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe8~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst14|inst4~regout\,
	datac => \inst12|inst4~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe8~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe8~regout\);

-- Location: LC_X7_Y2_N5
\inst10|LPM_MUX_component|auto_generated|dffe9\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe9~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe9~0\ & ((\inst18|inst4~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe9~0\ & (\inst17|inst4~regout\)))) # 
-- (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe9~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst17|inst4~regout\,
	datab => \Register2~combout\(1),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe9~0\,
	datad => \inst18|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe9~regout\);

-- Location: LC_X5_Y1_N5
\inst10|LPM_MUX_component|auto_generated|result_node[3]~4\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = ((\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & ((\inst10|LPM_MUX_component|auto_generated|dffe9~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (\inst10|LPM_MUX_component|auto_generated|dffe8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_MUX_component|auto_generated|dffe8~regout\,
	datac => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datad => \inst10|LPM_MUX_component|auto_generated|dffe9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LC_X2_Y1_N6
\inst10|LPM_MUX_component|auto_generated|dffe7\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe7~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe7~0\ & ((\inst18|inst5~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe7~0\ & (\inst17|inst5~regout\)))) # 
-- (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe7~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst17|inst5~regout\,
	datab => \Register2~combout\(1),
	datac => \inst18|inst5~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe7~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe7~regout\);

-- Location: LC_X3_Y1_N8
\inst10|LPM_MUX_component|auto_generated|dffe6\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe6~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe6~0\ & (\inst14|inst5~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe6~0\ & ((\inst12|inst5~regout\))))) # 
-- (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe6~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \inst14|inst5~regout\,
	datab => \Register2~combout\(0),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe6~0\,
	datad => \inst12|inst5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe6~regout\);

-- Location: LC_X3_Y1_N1
\inst10|LPM_MUX_component|auto_generated|result_node[2]~5\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = (\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst10|LPM_MUX_component|auto_generated|dffe7~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (((\inst10|LPM_MUX_component|auto_generated|dffe6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datab => \inst10|LPM_MUX_component|auto_generated|dffe7~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: LC_X3_Y1_N3
\inst10|LPM_MUX_component|auto_generated|dffe4\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe4~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe4~0\ & (\inst14|inst6~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe4~0\ & ((\inst12|inst6~regout\))))) # 
-- (!\Register2~combout\(0) & (\inst10|LPM_MUX_component|auto_generated|dffe4~0\)), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst10|LPM_MUX_component|auto_generated|dffe4~0\,
	datac => \inst14|inst6~regout\,
	datad => \inst12|inst6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe4~regout\);

-- Location: LC_X5_Y2_N8
\inst10|LPM_MUX_component|auto_generated|dffe5\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe5~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe5~0\ & ((\inst18|inst6~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe5~0\ & (\inst17|inst6~regout\)))) # 
-- (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe5~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(1),
	datab => \inst17|inst6~regout\,
	datac => \inst18|inst6~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe5~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe5~regout\);

-- Location: LC_X5_Y1_N6
\inst10|LPM_MUX_component|auto_generated|result_node[1]~6\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ = ((\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & ((\inst10|LPM_MUX_component|auto_generated|dffe5~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- (\inst10|LPM_MUX_component|auto_generated|dffe4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe4~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[1]~6_combout\);

-- Location: LC_X5_Y2_N5
\inst10|LPM_MUX_component|auto_generated|dffe3\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe3~regout\ = DFFEAS((\Register2~combout\(1) & ((\inst10|LPM_MUX_component|auto_generated|dffe3~0\ & ((\inst18|inst7~regout\))) # (!\inst10|LPM_MUX_component|auto_generated|dffe3~0\ & (\inst17|inst7~regout\)))) # 
-- (!\Register2~combout\(1) & (((\inst10|LPM_MUX_component|auto_generated|dffe3~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(1),
	datab => \inst17|inst7~regout\,
	datac => \inst18|inst7~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe3~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe3~regout\);

-- Location: LC_X6_Y4_N5
\inst10|LPM_MUX_component|auto_generated|dffe2\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|dffe2~regout\ = DFFEAS((\Register2~combout\(0) & ((\inst10|LPM_MUX_component|auto_generated|dffe2~0\ & (\inst14|inst7~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe2~0\ & ((\inst12|inst7~regout\))))) # 
-- (!\Register2~combout\(0) & (((\inst10|LPM_MUX_component|auto_generated|dffe2~0\)))), GLOBAL(\CLOCK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~combout\,
	dataa => \Register2~combout\(0),
	datab => \inst14|inst7~regout\,
	datac => \inst10|LPM_MUX_component|auto_generated|dffe2~0\,
	datad => \inst12|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_MUX_component|auto_generated|dffe2~regout\);

-- Location: LC_X6_Y3_N2
\inst10|LPM_MUX_component|auto_generated|result_node[0]~7\ : maxii_lcell
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = ((\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & (\inst10|LPM_MUX_component|auto_generated|dffe3~regout\)) # (!\inst10|LPM_MUX_component|auto_generated|dffe1a\(2) & 
-- ((\inst10|LPM_MUX_component|auto_generated|dffe2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_MUX_component|auto_generated|dffe1a\(2),
	datac => \inst10|LPM_MUX_component|auto_generated|dffe3~regout\,
	datad => \inst10|LPM_MUX_component|auto_generated|dffe2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[7]~0\,
	oe => VCC,
	padio => ww_RegOut1(7));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	oe => VCC,
	padio => ww_RegOut1(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	oe => VCC,
	padio => ww_RegOut1(5));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	oe => VCC,
	padio => ww_RegOut1(4));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	oe => VCC,
	padio => ww_RegOut1(3));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	oe => VCC,
	padio => ww_RegOut1(2));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	oe => VCC,
	padio => ww_RegOut1(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	oe => VCC,
	padio => ww_RegOut1(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[7]~0\,
	oe => VCC,
	padio => ww_RegOut2(7));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	oe => VCC,
	padio => ww_RegOut2(6));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	oe => VCC,
	padio => ww_RegOut2(5));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	oe => VCC,
	padio => ww_RegOut2(4));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	oe => VCC,
	padio => ww_RegOut2(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	oe => VCC,
	padio => ww_RegOut2(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	oe => VCC,
	padio => ww_RegOut2(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RegOut2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	oe => VCC,
	padio => ww_RegOut2(0));
END structure;


