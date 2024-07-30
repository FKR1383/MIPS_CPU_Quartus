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

-- DATE "03/09/2024 17:27:24"

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

ENTITY 	Practical3 IS
    PORT (
	\OUT\ : OUT std_logic_vector(15 DOWNTO 0);
	OPCODE : IN std_logic_vector(3 DOWNTO 0)
	);
END Practical3;

-- Design Ports Information
-- OUT[15]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[14]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[13]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[12]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[11]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[10]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[9]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[8]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[7]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[5]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[4]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[3]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[2]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[1]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OUT[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OPCODE[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPCODE[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practical3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|32~0_combout\ : std_logic;
SIGNAL \inst|32~1_combout\ : std_logic;
SIGNAL \inst|32~2_combout\ : std_logic;
SIGNAL \inst|32~3_combout\ : std_logic;
SIGNAL \inst|32~4_combout\ : std_logic;
SIGNAL \inst|32~5_combout\ : std_logic;
SIGNAL \inst|32~6_combout\ : std_logic;
SIGNAL \inst|32~7_combout\ : std_logic;
SIGNAL \inst|32~8_combout\ : std_logic;
SIGNAL \inst|32~9_combout\ : std_logic;
SIGNAL \inst|32~10_combout\ : std_logic;
SIGNAL \inst|32~11_combout\ : std_logic;
SIGNAL \inst|32~12_combout\ : std_logic;
SIGNAL \inst|32~13_combout\ : std_logic;
SIGNAL \inst|32~14_combout\ : std_logic;
SIGNAL \inst|32~15_combout\ : std_logic;
SIGNAL \OPCODE~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_32~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_32~0_combout\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
ww_OPCODE <= OPCODE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_32~15_combout\ <= NOT \inst|32~15_combout\;
\inst|ALT_INV_32~14_combout\ <= NOT \inst|32~14_combout\;
\inst|ALT_INV_32~13_combout\ <= NOT \inst|32~13_combout\;
\inst|ALT_INV_32~12_combout\ <= NOT \inst|32~12_combout\;
\inst|ALT_INV_32~11_combout\ <= NOT \inst|32~11_combout\;
\inst|ALT_INV_32~10_combout\ <= NOT \inst|32~10_combout\;
\inst|ALT_INV_32~9_combout\ <= NOT \inst|32~9_combout\;
\inst|ALT_INV_32~8_combout\ <= NOT \inst|32~8_combout\;
\inst|ALT_INV_32~7_combout\ <= NOT \inst|32~7_combout\;
\inst|ALT_INV_32~6_combout\ <= NOT \inst|32~6_combout\;
\inst|ALT_INV_32~5_combout\ <= NOT \inst|32~5_combout\;
\inst|ALT_INV_32~4_combout\ <= NOT \inst|32~4_combout\;
\inst|ALT_INV_32~3_combout\ <= NOT \inst|32~3_combout\;
\inst|ALT_INV_32~2_combout\ <= NOT \inst|32~2_combout\;
\inst|ALT_INV_32~1_combout\ <= NOT \inst|32~1_combout\;
\inst|ALT_INV_32~0_combout\ <= NOT \inst|32~0_combout\;

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCODE[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_OPCODE(3),
	combout => \OPCODE~combout\(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCODE[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_OPCODE(1),
	combout => \OPCODE~combout\(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCODE[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_OPCODE(0),
	combout => \OPCODE~combout\(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCODE[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_OPCODE(2),
	combout => \OPCODE~combout\(2));

-- Location: LC_X2_Y2_N2
\inst|32~0\ : maxii_lcell
-- Equation(s):
-- \inst|32~0_combout\ = (\OPCODE~combout\(3) & (\OPCODE~combout\(1) & (\OPCODE~combout\(0) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~0_combout\);

-- Location: LC_X2_Y2_N9
\inst|32~1\ : maxii_lcell
-- Equation(s):
-- \inst|32~1_combout\ = (\OPCODE~combout\(3) & (\OPCODE~combout\(1) & (!\OPCODE~combout\(0) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~1_combout\);

-- Location: LC_X2_Y2_N4
\inst|32~2\ : maxii_lcell
-- Equation(s):
-- \inst|32~2_combout\ = (\OPCODE~combout\(3) & (!\OPCODE~combout\(1) & (\OPCODE~combout\(0) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~2_combout\);

-- Location: LC_X4_Y2_N8
\inst|32~3\ : maxii_lcell
-- Equation(s):
-- \inst|32~3_combout\ = (\OPCODE~combout\(3) & (!\OPCODE~combout\(0) & (!\OPCODE~combout\(1) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(0),
	datac => \OPCODE~combout\(1),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~3_combout\);

-- Location: LC_X4_Y2_N4
\inst|32~4\ : maxii_lcell
-- Equation(s):
-- \inst|32~4_combout\ = (\OPCODE~combout\(3) & (\OPCODE~combout\(0) & (\OPCODE~combout\(1) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(0),
	datac => \OPCODE~combout\(1),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~4_combout\);

-- Location: LC_X4_Y2_N2
\inst|32~5\ : maxii_lcell
-- Equation(s):
-- \inst|32~5_combout\ = (\OPCODE~combout\(3) & (!\OPCODE~combout\(0) & (\OPCODE~combout\(1) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(0),
	datac => \OPCODE~combout\(1),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~5_combout\);

-- Location: LC_X4_Y2_N5
\inst|32~6\ : maxii_lcell
-- Equation(s):
-- \inst|32~6_combout\ = (\OPCODE~combout\(3) & (\OPCODE~combout\(0) & (!\OPCODE~combout\(1) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(0),
	datac => \OPCODE~combout\(1),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~6_combout\);

-- Location: LC_X2_Y2_N6
\inst|32~7\ : maxii_lcell
-- Equation(s):
-- \inst|32~7_combout\ = (\OPCODE~combout\(3) & (!\OPCODE~combout\(1) & (!\OPCODE~combout\(0) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~7_combout\);

-- Location: LC_X2_Y2_N5
\inst|32~8\ : maxii_lcell
-- Equation(s):
-- \inst|32~8_combout\ = (!\OPCODE~combout\(3) & (\OPCODE~combout\(1) & (\OPCODE~combout\(0) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~8_combout\);

-- Location: LC_X4_Y2_N9
\inst|32~9\ : maxii_lcell
-- Equation(s):
-- \inst|32~9_combout\ = (!\OPCODE~combout\(3) & (!\OPCODE~combout\(0) & (\OPCODE~combout\(1) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(0),
	datac => \OPCODE~combout\(1),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~9_combout\);

-- Location: LC_X2_Y2_N0
\inst|32~10\ : maxii_lcell
-- Equation(s):
-- \inst|32~10_combout\ = (!\OPCODE~combout\(3) & (!\OPCODE~combout\(1) & (\OPCODE~combout\(0) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~10_combout\);

-- Location: LC_X2_Y2_N1
\inst|32~11\ : maxii_lcell
-- Equation(s):
-- \inst|32~11_combout\ = (!\OPCODE~combout\(3) & (!\OPCODE~combout\(1) & (!\OPCODE~combout\(0) & \OPCODE~combout\(2))))

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
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~11_combout\);

-- Location: LC_X4_Y2_N6
\inst|32~12\ : maxii_lcell
-- Equation(s):
-- \inst|32~12_combout\ = (!\OPCODE~combout\(3) & (\OPCODE~combout\(0) & (\OPCODE~combout\(1) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(0),
	datac => \OPCODE~combout\(1),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~12_combout\);

-- Location: LC_X2_Y2_N3
\inst|32~13\ : maxii_lcell
-- Equation(s):
-- \inst|32~13_combout\ = (!\OPCODE~combout\(3) & (\OPCODE~combout\(1) & (!\OPCODE~combout\(0) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~13_combout\);

-- Location: LC_X2_Y2_N8
\inst|32~14\ : maxii_lcell
-- Equation(s):
-- \inst|32~14_combout\ = (!\OPCODE~combout\(3) & (!\OPCODE~combout\(1) & (\OPCODE~combout\(0) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~14_combout\);

-- Location: LC_X2_Y2_N7
\inst|32~15\ : maxii_lcell
-- Equation(s):
-- \inst|32~15_combout\ = (!\OPCODE~combout\(3) & (!\OPCODE~combout\(1) & (!\OPCODE~combout\(0) & !\OPCODE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE~combout\(3),
	datab => \OPCODE~combout\(1),
	datac => \OPCODE~combout\(0),
	datad => \OPCODE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|32~15_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~0_combout\,
	oe => VCC,
	padio => \ww_OUT\(15));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~1_combout\,
	oe => VCC,
	padio => \ww_OUT\(14));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~2_combout\,
	oe => VCC,
	padio => \ww_OUT\(13));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~3_combout\,
	oe => VCC,
	padio => \ww_OUT\(12));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~4_combout\,
	oe => VCC,
	padio => \ww_OUT\(11));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~5_combout\,
	oe => VCC,
	padio => \ww_OUT\(10));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~6_combout\,
	oe => VCC,
	padio => \ww_OUT\(9));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~7_combout\,
	oe => VCC,
	padio => \ww_OUT\(8));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~8_combout\,
	oe => VCC,
	padio => \ww_OUT\(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~9_combout\,
	oe => VCC,
	padio => \ww_OUT\(6));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~10_combout\,
	oe => VCC,
	padio => \ww_OUT\(5));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~11_combout\,
	oe => VCC,
	padio => \ww_OUT\(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~12_combout\,
	oe => VCC,
	padio => \ww_OUT\(3));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~13_combout\,
	oe => VCC,
	padio => \ww_OUT\(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~14_combout\,
	oe => VCC,
	padio => \ww_OUT\(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OUT[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_32~15_combout\,
	oe => VCC,
	padio => \ww_OUT\(0));
END structure;


