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

-- DATE "03/31/2024 13:39:29"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practical3 IS
    PORT (
	READY : OUT std_logic;
	CLOCK : IN std_logic;
	ENABLE : IN std_logic;
	OPCODE : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ZERO : OUT std_logic;
	DECODE : OUT std_logic_vector(15 DOWNTO 0);
	\OUT\ : OUT std_logic_vector(7 DOWNTO 0)
	);
END Practical3;

-- Design Ports Information
-- READY	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[15]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[14]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[13]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[12]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[11]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[10]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[9]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[8]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODE[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_READY : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_DECODE : std_logic_vector(15 DOWNTO 0);
SIGNAL \ww_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \READY~output_o\ : std_logic;
SIGNAL \ZERO~output_o\ : std_logic;
SIGNAL \DECODE[15]~output_o\ : std_logic;
SIGNAL \DECODE[14]~output_o\ : std_logic;
SIGNAL \DECODE[13]~output_o\ : std_logic;
SIGNAL \DECODE[12]~output_o\ : std_logic;
SIGNAL \DECODE[11]~output_o\ : std_logic;
SIGNAL \DECODE[10]~output_o\ : std_logic;
SIGNAL \DECODE[9]~output_o\ : std_logic;
SIGNAL \DECODE[8]~output_o\ : std_logic;
SIGNAL \DECODE[7]~output_o\ : std_logic;
SIGNAL \DECODE[6]~output_o\ : std_logic;
SIGNAL \DECODE[5]~output_o\ : std_logic;
SIGNAL \DECODE[4]~output_o\ : std_logic;
SIGNAL \DECODE[3]~output_o\ : std_logic;
SIGNAL \DECODE[2]~output_o\ : std_logic;
SIGNAL \DECODE[1]~output_o\ : std_logic;
SIGNAL \DECODE[0]~output_o\ : std_logic;
SIGNAL \OUT[7]~output_o\ : std_logic;
SIGNAL \OUT[6]~output_o\ : std_logic;
SIGNAL \OUT[5]~output_o\ : std_logic;
SIGNAL \OUT[4]~output_o\ : std_logic;
SIGNAL \OUT[3]~output_o\ : std_logic;
SIGNAL \OUT[2]~output_o\ : std_logic;
SIGNAL \OUT[1]~output_o\ : std_logic;
SIGNAL \OUT[0]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \ENABLE~input_o\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \OPCODE[3]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\ : std_logic;
SIGNAL \inst3|inst9|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst9|inst3|inst|1~combout\ : std_logic;
SIGNAL \inst3|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst3|inst10|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst10|inst|inst10|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst9|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst1~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst2~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst3~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst4~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst5~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst6~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|inst7~q\ : std_logic;
SIGNAL \inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst1~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst2~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst3~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst4~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst5~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst6~q\ : std_logic;
SIGNAL \inst4|inst35|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|inst7~q\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst3|inst9|inst2|inst|1~combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst9|inst1|inst|1~combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l2_w4_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l2_w3_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l2_w2_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l2_w1_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|LPM_MUX_component|auto_generated|external_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode89w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode79w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode59w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode49w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode39w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode29w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode179w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode169w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode159w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode149w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode139w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode12w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode129w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode119w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode108w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|LPM_MUX_component|auto_generated|external_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst19|LPM_MUX_component|auto_generated|external_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCODE[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ENABLE~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCODE[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCODE[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCODE[2]~input_o\ : std_logic;
SIGNAL \inst3|inst|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w1_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w2_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst10|inst|inst|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w3_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w4_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[2]~4_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode129w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst3|inst9|inst1|inst|ALT_INV_1~combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst1|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst9|inst2|inst|ALT_INV_1~combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst10|inst|inst10|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst9|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst3|inst9|inst3|inst|ALT_INV_1~combout\ : std_logic;
SIGNAL \inst3|inst9|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst3|inst10|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[3]~3_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~2_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[0]~1_combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~0_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode69w[3]~0_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst4|inst6|inst|inst|ALT_INV_inst5~q\ : std_logic;

BEGIN

READY <= ww_READY;
ww_CLOCK <= CLOCK;
ww_ENABLE <= ENABLE;
ww_OPCODE <= OPCODE;
ww_A <= A;
ww_B <= B;
ZERO <= ww_ZERO;
DECODE <= ww_DECODE;
\OUT\ <= \ww_OUT\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(0) <= NOT \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(0);
\inst4|inst6|inst|inst|ALT_INV_inst6~q\ <= NOT \inst4|inst6|inst|inst|inst6~q\;
\inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1);
\inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2);
\inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0);
\inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3);
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_OPCODE[3]~input_o\ <= NOT \OPCODE[3]~input_o\;
\ALT_INV_ENABLE~input_o\ <= NOT \ENABLE~input_o\;
\ALT_INV_OPCODE[0]~input_o\ <= NOT \OPCODE[0]~input_o\;
\ALT_INV_OPCODE[1]~input_o\ <= NOT \OPCODE[1]~input_o\;
\ALT_INV_OPCODE[2]~input_o\ <= NOT \OPCODE[2]~input_o\;
\inst3|inst|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst3|inst|inst3|inst5~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\;
\inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\ <= NOT \inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst7~q\ <= NOT \inst4|inst6|inst|inst1|inst7~q\;
\inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0);
\inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0);
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst6~q\ <= NOT \inst4|inst6|inst|inst1|inst6~q\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w1_n1_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l2_w1_n1_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst5~q\ <= NOT \inst4|inst6|inst|inst1|inst5~q\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst3|inst|inst|ALT_INV_inst2~combout\ <= NOT \inst3|inst|inst|inst2~combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w2_n1_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l2_w2_n1_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst4~q\ <= NOT \inst4|inst6|inst|inst1|inst4~q\;
\inst10|inst|inst|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst10|inst|inst|inst1|inst5~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w3_n1_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l2_w3_n1_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst3~q\ <= NOT \inst4|inst6|inst|inst1|inst3~q\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst3|inst|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst3|inst|inst2|inst5~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w4_n1_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l2_w4_n1_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst2~q\ <= NOT \inst4|inst6|inst|inst1|inst2~q\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[2]~4_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\;
\inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode129w[3]~0_combout\ <= NOT \inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst1~q\ <= NOT \inst4|inst6|inst|inst1|inst1~q\;
\inst3|inst9|inst1|inst|ALT_INV_1~combout\ <= NOT \inst3|inst9|inst1|inst|1~combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~2_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~1_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0_combout\;
\inst4|inst6|inst|inst1|ALT_INV_inst~q\ <= NOT \inst4|inst6|inst|inst1|inst~q\;
\inst3|inst9|inst2|inst|ALT_INV_1~combout\ <= NOT \inst3|inst9|inst2|inst|1~combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~6_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~5_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~3_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\;
\inst10|inst|inst10|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst10|inst|inst10|inst1|inst5~0_combout\;
\inst10|inst|inst|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst10|inst|inst|inst3|inst5~0_combout\;
\inst10|inst|inst|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst10|inst|inst|inst2|inst5~0_combout\;
\inst10|inst|inst9|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst10|inst|inst9|inst1|inst5~0_combout\;
\inst4|inst6|inst|inst|ALT_INV_inst7~q\ <= NOT \inst4|inst6|inst|inst|inst7~q\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~2_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\;
\inst3|inst9|inst3|inst|ALT_INV_1~combout\ <= NOT \inst3|inst9|inst3|inst|1~combout\;
\inst3|inst9|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst3|inst9|inst1|inst5~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~1_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~2_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\;
\inst3|inst10|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst3|inst10|inst1|inst5~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~0_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\;
\inst3|inst|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst3|inst|inst1|inst5~0_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[3]~3_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\;
\inst5|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~2_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~1_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~0_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~2_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[0]~1_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\;
\inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~0_combout\ <= NOT \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\;
\inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode69w[3]~0_combout\ <= NOT \inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~7_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\;
\inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w5_n0_mux_dataout~1_combout\ <= NOT \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\;
\inst4|inst6|inst|inst|ALT_INV_inst~q\ <= NOT \inst4|inst6|inst|inst|inst~q\;
\inst4|inst6|inst|inst|ALT_INV_inst1~q\ <= NOT \inst4|inst6|inst|inst|inst1~q\;
\inst4|inst6|inst|inst|ALT_INV_inst2~q\ <= NOT \inst4|inst6|inst|inst|inst2~q\;
\inst4|inst6|inst|inst|ALT_INV_inst3~q\ <= NOT \inst4|inst6|inst|inst|inst3~q\;
\inst4|inst6|inst|inst|ALT_INV_inst4~q\ <= NOT \inst4|inst6|inst|inst|inst4~q\;
\inst4|inst6|inst|inst|ALT_INV_inst5~q\ <= NOT \inst4|inst6|inst|inst|inst5~q\;

-- Location: IOOBUF_X59_Y46_N2
\READY~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LPM_MUX_component|auto_generated|external_reg\(0),
	devoe => ww_devoe,
	o => \READY~output_o\);

-- Location: IOOBUF_X56_Y0_N64
\ZERO~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|external_reg\(0),
	devoe => ww_devoe,
	o => \ZERO~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\DECODE[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode179w\(3),
	devoe => ww_devoe,
	o => \DECODE[15]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\DECODE[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode169w\(3),
	devoe => ww_devoe,
	o => \DECODE[14]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\DECODE[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode159w\(3),
	devoe => ww_devoe,
	o => \DECODE[13]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\DECODE[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode149w\(3),
	devoe => ww_devoe,
	o => \DECODE[12]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\DECODE[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode139w\(3),
	devoe => ww_devoe,
	o => \DECODE[11]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\DECODE[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode129w\(3),
	devoe => ww_devoe,
	o => \DECODE[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\DECODE[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode119w\(3),
	devoe => ww_devoe,
	o => \DECODE[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\DECODE[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode108w\(3),
	devoe => ww_devoe,
	o => \DECODE[8]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\DECODE[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode89w\(3),
	devoe => ww_devoe,
	o => \DECODE[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N98
\DECODE[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode79w\(3),
	devoe => ww_devoe,
	o => \DECODE[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N5
\DECODE[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODE[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\DECODE[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode59w\(3),
	devoe => ww_devoe,
	o => \DECODE[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N33
\DECODE[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode49w\(3),
	devoe => ww_devoe,
	o => \DECODE[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\DECODE[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode39w\(3),
	devoe => ww_devoe,
	o => \DECODE[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\DECODE[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode29w\(3),
	devoe => ww_devoe,
	o => \DECODE[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\DECODE[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode12w\(3),
	devoe => ww_devoe,
	o => \DECODE[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\OUT[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(7),
	devoe => ww_devoe,
	o => \OUT[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N95
\OUT[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(6),
	devoe => ww_devoe,
	o => \OUT[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\OUT[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(5),
	devoe => ww_devoe,
	o => \OUT[5]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\OUT[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(4),
	devoe => ww_devoe,
	o => \OUT[4]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\OUT[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(3),
	devoe => ww_devoe,
	o => \OUT[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\OUT[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(2),
	devoe => ww_devoe,
	o => \OUT[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N33
\OUT[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(1),
	devoe => ww_devoe,
	o => \OUT[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\OUT[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|LPM_MUX_component|auto_generated|external_reg\(0),
	devoe => ww_devoe,
	o => \OUT[0]~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\CLOCK~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G7
\CLOCK~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: MLABCELL_X54_Y7_N0
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\ = SUM(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\,
	cout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: MLABCELL_X54_Y7_N24
\inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) # ( !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( 
-- ((!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	dataf => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	combout => \inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: IOIBUF_X45_Y0_N1
\ENABLE~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENABLE,
	o => \ENABLE~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\OPCODE[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(1),
	o => \OPCODE[1]~input_o\);

-- Location: IOIBUF_X59_Y4_N32
\OPCODE[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(0),
	o => \OPCODE[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\OPCODE[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(2),
	o => \OPCODE[2]~input_o\);

-- Location: IOIBUF_X59_Y4_N94
\OPCODE[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(3),
	o => \OPCODE[3]~input_o\);

-- Location: MLABCELL_X54_Y7_N20
\inst4|inst|LPM_COUNTER_component|auto_generated|_~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\ = ( !\OPCODE[3]~input_o\ & ( \inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) & ( (\ENABLE~input_o\ & (!\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & 
-- \OPCODE[2]~input_o\))) ) ) ) # ( \OPCODE[3]~input_o\ & ( !\inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) ) ) # ( !\OPCODE[3]~input_o\ & ( !\inst4|inst30|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE~input_o\,
	datab => \ALT_INV_OPCODE[1]~input_o\,
	datac => \ALT_INV_OPCODE[0]~input_o\,
	datad => \ALT_INV_OPCODE[2]~input_o\,
	datae => \ALT_INV_OPCODE[3]~input_o\,
	dataf => \inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	combout => \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X54_Y7_N1
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\,
	sclr => \inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	ena => \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: MLABCELL_X54_Y7_N2
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\ = SUM(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) + ( GND ) + ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ ))
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) + ( GND ) + ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	cin => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	sumout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\,
	cout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X54_Y7_N3
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\,
	sclr => \inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	ena => \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: MLABCELL_X54_Y7_N4
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\ = SUM(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) + ( GND ) + ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ ))
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) + ( GND ) + ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	cin => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	sumout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\,
	cout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X54_Y7_N5
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\,
	sclr => \inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	ena => \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: MLABCELL_X54_Y7_N6
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\ = SUM(( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) + ( GND ) + ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	cin => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	sumout => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\);

-- Location: FF_X54_Y7_N7
\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\,
	sclr => \inst4|inst30|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	ena => \inst4|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: MLABCELL_X52_Y4_N22
\inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0_combout\ = ( !\OPCODE[3]~input_o\ & ( (!\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & (\ENABLE~input_o\ & \OPCODE[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[1]~input_o\,
	datab => \ALT_INV_OPCODE[0]~input_o\,
	datac => \ALT_INV_ENABLE~input_o\,
	datad => \ALT_INV_OPCODE[2]~input_o\,
	datae => \ALT_INV_OPCODE[3]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0_combout\);

-- Location: LABCELL_X55_Y7_N18
\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout\ : arriaii_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~combout\ = ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( !\inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0_combout\ ) ) # ( 
-- !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (!\inst2|LPM_DECODE_component|auto_generated|w_anode69w[3]~0_combout\) # ((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111100001111010011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode69w[3]~0_combout\,
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	dataf => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	combout => \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~combout\);

-- Location: FF_X55_Y7_N19
\inst6|LPM_MUX_component|auto_generated|external_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_MUX_component|auto_generated|external_reg\(0));

-- Location: MLABCELL_X52_Y4_N32
\inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \OPCODE[2]~input_o\ & ( (!\OPCODE[3]~input_o\ & \OPCODE[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[2]~input_o\,
	combout => \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X59_Y4_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X58_Y7_N4
\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\ = ( \B[3]~input_o\ & ( !\A[3]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\);

-- Location: IOIBUF_X59_Y7_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X57_Y7_N12
\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ ) ) # ( !\B[1]~input_o\ & ( \A[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\);

-- Location: IOIBUF_X59_Y7_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y9_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y7_N10
\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\ = ( \B[2]~input_o\ & ( !\A[2]~input_o\ ) ) # ( !\B[2]~input_o\ & ( \A[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\);

-- Location: IOIBUF_X47_Y0_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X47_Y0_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X53_Y7_N34
\inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = ( \A[4]~input_o\ & ( (\B[4]~input_o\ & (!\A[5]~input_o\ $ (\B[5]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (!\B[4]~input_o\ & (!\A[5]~input_o\ $ (\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: IOIBUF_X59_Y6_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X57_Y7_N16
\inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = ( \A[7]~input_o\ & ( (\B[7]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (!\B[7]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: MLABCELL_X57_Y7_N30
\inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = ( \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ & ( (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\ & 
-- (\inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ & (!\A[6]~input_o\ $ (\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~2_combout\,
	datad => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~1_combout\,
	dataf => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~0_combout\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: MLABCELL_X57_Y7_N4
\inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ = ( \OPCODE[0]~input_o\ & ( (\inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & (((!\inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\) 
-- # (\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\)) # (\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\))) ) ) # ( !\OPCODE[0]~input_o\ & ( (\inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ 
-- & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ & \inst18|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000001010101000101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datab => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~0_combout\,
	datac => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[0]~1_combout\,
	datad => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire[0]~2_combout\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X57_Y7_N5
\inst5|LPM_MUX_component|auto_generated|external_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst5|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_MUX_component|auto_generated|external_reg\(0));

-- Location: MLABCELL_X52_Y4_N0
\inst2|LPM_DECODE_component|auto_generated|w_anode179w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode179w\(3) = ( \OPCODE[3]~input_o\ & ( (\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & (\OPCODE[2]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[1]~input_o\,
	datab => \ALT_INV_OPCODE[0]~input_o\,
	datac => \ALT_INV_OPCODE[2]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	datae => \ALT_INV_OPCODE[3]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode179w\(3));

-- Location: MLABCELL_X52_Y4_N12
\inst2|LPM_DECODE_component|auto_generated|w_anode169w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode169w\(3) = ( \OPCODE[1]~input_o\ & ( !\OPCODE[0]~input_o\ & ( (\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & \ENABLE~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	datae => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode169w\(3));

-- Location: MLABCELL_X52_Y4_N8
\inst2|LPM_DECODE_component|auto_generated|w_anode159w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode159w\(3) = ( \OPCODE[0]~input_o\ & ( (\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & (!\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode159w\(3));

-- Location: MLABCELL_X52_Y4_N10
\inst2|LPM_DECODE_component|auto_generated|w_anode149w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode149w\(3) = ( !\OPCODE[0]~input_o\ & ( (\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & (\ENABLE~input_o\ & !\OPCODE[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_ENABLE~input_o\,
	datad => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode149w\(3));

-- Location: MLABCELL_X52_Y4_N28
\inst2|LPM_DECODE_component|auto_generated|w_anode139w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode139w\(3) = ( \OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & (\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode139w\(3));

-- Location: MLABCELL_X52_Y4_N30
\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode129w\(3) = ( !\OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & (\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode129w\(3));

-- Location: MLABCELL_X52_Y4_N16
\inst2|LPM_DECODE_component|auto_generated|w_anode119w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode119w\(3) = ( \OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & (!\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode119w\(3));

-- Location: MLABCELL_X52_Y4_N18
\inst2|LPM_DECODE_component|auto_generated|w_anode108w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode108w\(3) = ( !\OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (\OPCODE[3]~input_o\ & (!\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode108w\(3));

-- Location: MLABCELL_X52_Y4_N4
\inst2|LPM_DECODE_component|auto_generated|w_anode89w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode89w\(3) = ( \OPCODE[0]~input_o\ & ( (\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode89w\(3));

-- Location: MLABCELL_X52_Y4_N6
\inst2|LPM_DECODE_component|auto_generated|w_anode79w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode79w\(3) = ( !\OPCODE[0]~input_o\ & ( (\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (\ENABLE~input_o\ & \OPCODE[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_ENABLE~input_o\,
	datad => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode79w\(3));

-- Location: MLABCELL_X52_Y4_N24
\inst2|LPM_DECODE_component|auto_generated|w_anode59w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode59w\(3) = ( !\OPCODE[0]~input_o\ & ( (\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (!\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode59w\(3));

-- Location: MLABCELL_X52_Y4_N26
\inst2|LPM_DECODE_component|auto_generated|w_anode49w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode49w\(3) = ( \OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode49w\(3));

-- Location: MLABCELL_X52_Y4_N38
\inst2|LPM_DECODE_component|auto_generated|w_anode39w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode39w\(3) = ( !\OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode39w\(3));

-- Location: MLABCELL_X52_Y4_N36
\inst2|LPM_DECODE_component|auto_generated|w_anode29w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode29w\(3) = ( \OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (!\OPCODE[1]~input_o\ & \ENABLE~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_ENABLE~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode29w\(3));

-- Location: MLABCELL_X52_Y4_N34
\inst2|LPM_DECODE_component|auto_generated|w_anode12w[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode12w\(3) = ( !\OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & (!\OPCODE[3]~input_o\ & (\ENABLE~input_o\ & !\OPCODE[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[3]~input_o\,
	datac => \ALT_INV_ENABLE~input_o\,
	datad => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode12w\(3));

-- Location: MLABCELL_X57_Y7_N6
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ = ( !\OPCODE[3]~input_o\ & ( !\OPCODE[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OPCODE[2]~input_o\,
	dataf => \ALT_INV_OPCODE[3]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y7_N6
\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\ = ( \A[7]~input_o\ & ( !\B[7]~input_o\ ) ) # ( !\A[7]~input_o\ & ( \B[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\);

-- Location: LABCELL_X53_Y7_N32
\inst3|inst9|inst1|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst1|inst5~0_combout\ = ( \B[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\A[5]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \inst3|inst9|inst1|inst5~0_combout\);

-- Location: MLABCELL_X57_Y7_N8
\inst3|inst9|inst3|inst|1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst3|inst|1~combout\ = ( \inst3|inst9|inst1|inst5~0_combout\ & ( !\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\ $ (((!\B[6]~input_o\ & !\A[6]~input_o\))) ) ) # ( !\inst3|inst9|inst1|inst5~0_combout\ & ( 
-- !\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\ $ (((!\B[6]~input_o\) # (!\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[3]~3_combout\,
	dataf => \inst3|inst9|inst1|ALT_INV_inst5~0_combout\,
	combout => \inst3|inst9|inst3|inst|1~combout\);

-- Location: LABCELL_X58_Y7_N36
\inst3|inst|inst1|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst1|inst5~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \inst3|inst|inst1|inst5~0_combout\);

-- Location: LABCELL_X58_Y7_N22
\inst3|inst|inst3|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst5~0_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\inst3|inst|inst1|inst5~0_combout\) # (\A[2]~input_o\)))) # (\B[3]~input_o\ & (((\inst3|inst|inst1|inst5~0_combout\) # (\A[2]~input_o\)) # (\A[3]~input_o\))) 
-- ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & (\A[2]~input_o\ & \inst3|inst|inst1|inst5~0_combout\))) # (\B[3]~input_o\ & (((\A[2]~input_o\ & \inst3|inst|inst1|inst5~0_combout\)) # (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \inst3|inst|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \inst3|inst|inst3|inst5~0_combout\);

-- Location: LABCELL_X55_Y7_N38
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\ = ( \OPCODE[1]~input_o\ & ( (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ & (\inst3|inst9|inst3|inst|1~combout\ & (!\inst3|inst|inst3|inst5~0_combout\ & 
-- \OPCODE[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~0_combout\,
	datab => \inst3|inst9|inst3|inst|ALT_INV_1~combout\,
	datac => \inst3|inst|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_OPCODE[0]~input_o\,
	dataf => \ALT_INV_OPCODE[1]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X53_Y7_N14
\inst3|inst10|inst1|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst10|inst1|inst5~0_combout\ = ( \A[4]~input_o\ & ( (!\A[5]~input_o\ & !\B[5]~input_o\) ) ) # ( !\A[4]~input_o\ & ( (!\A[5]~input_o\ & ((!\B[4]~input_o\) # (!\B[5]~input_o\))) # (\A[5]~input_o\ & (!\B[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \inst3|inst10|inst1|inst5~0_combout\);

-- Location: MLABCELL_X57_Y6_N16
\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ = ( \B[7]~input_o\ & ( \A[7]~input_o\ & ( !\OPCODE[1]~input_o\ ) ) ) # ( !\B[7]~input_o\ & ( \A[7]~input_o\ & ( (!\OPCODE[1]~input_o\ & \OPCODE[0]~input_o\) ) ) ) # ( \B[7]~input_o\ 
-- & ( !\A[7]~input_o\ & ( (!\OPCODE[1]~input_o\ & \OPCODE[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_OPCODE[0]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X52_Y7_N32
\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\ = ( \OPCODE[0]~input_o\ & ( \OPCODE[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_OPCODE[0]~input_o\,
	dataf => \ALT_INV_OPCODE[1]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X53_Y7_N0
\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\ = ( \A[6]~input_o\ & ( \B[6]~input_o\ & ( (!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & 
-- ((!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\) # (\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\))) ) ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ & ( 
-- (!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & ((!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\) # (!\inst3|inst10|inst1|inst5~0_combout\ $ 
-- (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\)))) ) ) ) # ( \A[6]~input_o\ & ( !\B[6]~input_o\ & ( (!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & 
-- ((!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\) # (!\inst3|inst10|inst1|inst5~0_combout\ $ (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\B[6]~input_o\ & ( 
-- (!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & ((!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\) # (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110001001100100011000100110010001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|inst1|ALT_INV_inst5~0_combout\,
	datab => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\,
	datad => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[3]~3_combout\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X53_Y7_N38
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\ = ( \OPCODE[1]~input_o\ & ( \inst3|inst|inst3|inst5~0_combout\ & ( (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ & 
-- ((!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\) # ((!\OPCODE[0]~input_o\ & \inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\)))) ) ) ) # ( !\OPCODE[1]~input_o\ & ( \inst3|inst|inst3|inst5~0_combout\ & ( 
-- (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ & !\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\) ) ) ) # ( \OPCODE[1]~input_o\ & ( !\inst3|inst|inst3|inst5~0_combout\ & ( 
-- (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ & (!\OPCODE[0]~input_o\ & ((!\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\) # (\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\)))) ) 
-- ) ) # ( !\OPCODE[1]~input_o\ & ( !\inst3|inst|inst3|inst5~0_combout\ & ( (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ & !\inst19|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010001000000010001010101000000000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_OPCODE[0]~input_o\,
	datac => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[3]~3_combout\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~2_combout\,
	datae => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \inst3|inst|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X57_Y7_N38
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\ = ( !\OPCODE[3]~input_o\ & ( (\OPCODE[2]~input_o\ & !\OPCODE[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datab => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[3]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X53_Y7_N8
\inst10|inst|inst10|inst1|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|inst|inst10|inst1|inst5~0_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\) # ((!\B[4]~input_o\) # (\A[4]~input_o\)) ) ) # ( !\A[5]~input_o\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\) # (\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000000110011111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \inst10|inst|inst10|inst1|inst5~0_combout\);

-- Location: LABCELL_X58_Y7_N0
\inst10|inst|inst|inst2|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|inst|inst|inst2|inst5~0_combout\ = ( \A[1]~input_o\ & ( \B[0]~input_o\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & (!\A[0]~input_o\ & !\A[2]~input_o\))) # (\B[2]~input_o\ & ((!\A[2]~input_o\) # ((\B[1]~input_o\ & !\A[0]~input_o\)))) ) ) ) # ( 
-- !\A[1]~input_o\ & ( \B[0]~input_o\ & ( (!\B[2]~input_o\ & (!\A[2]~input_o\ & ((!\A[0]~input_o\) # (\B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\A[0]~input_o\) # (!\A[2]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( \A[1]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (\B[2]~input_o\ & !\A[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\ & !\A[2]~input_o\)) # (\B[1]~input_o\ & ((!\A[2]~input_o\) # (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101000011110000000011011111000011010100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \inst10|inst|inst|inst2|inst5~0_combout\);

-- Location: LABCELL_X58_Y7_N20
\inst10|inst|inst|inst3|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|inst|inst|inst3|inst5~0_combout\ = (!\B[3]~input_o\ & ((!\inst10|inst|inst|inst2|inst5~0_combout\) # (\A[3]~input_o\))) # (\B[3]~input_o\ & (\A[3]~input_o\ & !\inst10|inst|inst|inst2|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010101100101011001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \inst10|inst|inst|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst10|inst|inst|inst3|inst5~0_combout\);

-- Location: LABCELL_X53_Y7_N10
\inst10|inst|inst9|inst1|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|inst|inst9|inst1|inst5~0_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\) # ((\A[4]~input_o\ & !\B[4]~input_o\)) ) ) # ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & (!\B[5]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011011100110111001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \inst10|inst|inst9|inst1|inst5~0_combout\);

-- Location: LABCELL_X53_Y7_N28
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\ = ( !\inst10|inst|inst|inst3|inst5~0_combout\ & ( (!\OPCODE[0]~input_o\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\ $ (((!\A[6]~input_o\ & 
-- (\inst10|inst|inst9|inst1|inst5~0_combout\ & !\B[6]~input_o\)) # (\A[6]~input_o\ & ((!\B[6]~input_o\) # (\inst10|inst|inst9|inst1|inst5~0_combout\))))))) ) ) # ( \inst10|inst|inst|inst3|inst5~0_combout\ & ( (!\OPCODE[0]~input_o\ & 
-- (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[3]~3_combout\ $ (((!\A[6]~input_o\ & (\inst10|inst|inst10|inst1|inst5~0_combout\ & !\B[6]~input_o\)) # (\A[6]~input_o\ & ((!\B[6]~input_o\) # (\inst10|inst|inst10|inst1|inst5~0_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1001001100000000100100110000000011001001000000001100100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[3]~3_combout\,
	datac => \inst10|inst|inst10|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_OPCODE[0]~input_o\,
	datae => \inst10|inst|inst|inst3|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	datag => \inst10|inst|inst9|inst1|ALT_INV_inst5~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\);

-- Location: MLABCELL_X54_Y7_N28
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \A[6]~input_o\ & ( \inst4|inst6|inst|inst|inst7~q\ ) ) # ( !\A[6]~input_o\ & ( \inst4|inst6|inst|inst|inst7~q\ & ( 
-- (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) ) ) ) # ( \A[6]~input_o\ & ( !\inst4|inst6|inst|inst|inst7~q\ & ( (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \inst4|inst6|inst|inst|ALT_INV_inst7~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X54_Y7_N29
\inst4|inst6|inst|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst~q\);

-- Location: MLABCELL_X54_Y7_N12
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \A[5]~input_o\ & ( \inst4|inst6|inst|inst1|inst~q\ ) ) # ( !\A[5]~input_o\ & ( \inst4|inst6|inst|inst1|inst~q\ & ( 
-- (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) ) ) ) # ( \A[5]~input_o\ & ( !\inst4|inst6|inst|inst1|inst~q\ & ( (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: FF_X54_Y7_N13
\inst4|inst6|inst|inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst1~q\);

-- Location: MLABCELL_X54_Y7_N14
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \A[4]~input_o\ & ( \inst4|inst6|inst|inst1|inst1~q\ ) ) # ( !\A[4]~input_o\ & ( \inst4|inst6|inst|inst1|inst1~q\ & ( 
-- (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) ) ) ) # ( \A[4]~input_o\ & ( !\inst4|inst6|inst|inst1|inst1~q\ & ( (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst1~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X54_Y7_N15
\inst4|inst6|inst|inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst2~q\);

-- Location: MLABCELL_X54_Y7_N32
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( \inst4|inst6|inst|inst1|inst2~q\ ) ) # ( 
-- !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( \inst4|inst6|inst|inst1|inst2~q\ & ( (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (\A[3]~input_o\) ) ) ) # ( !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( 
-- !\inst4|inst6|inst|inst1|inst2~q\ & ( (\A[3]~input_o\ & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datae => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst2~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X54_Y7_N33
\inst4|inst6|inst|inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst3~q\);

-- Location: MLABCELL_X54_Y7_N30
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \A[2]~input_o\ & ( \inst4|inst6|inst|inst1|inst3~q\ ) ) # ( !\A[2]~input_o\ & ( \inst4|inst6|inst|inst1|inst3~q\ & ( 
-- (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) ) ) ) # ( \A[2]~input_o\ & ( !\inst4|inst6|inst|inst1|inst3~q\ & ( (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst3~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X54_Y7_N31
\inst4|inst6|inst|inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst4~q\);

-- Location: LABCELL_X55_Y7_N12
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \A[1]~input_o\ & ( \inst4|inst6|inst|inst1|inst4~q\ ) ) # ( !\A[1]~input_o\ & ( \inst4|inst6|inst|inst1|inst4~q\ & ( 
-- (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) ) ) ) # ( \A[1]~input_o\ & ( !\inst4|inst6|inst|inst1|inst4~q\ & ( (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst4~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X55_Y7_N13
\inst4|inst6|inst|inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst5~q\);

-- Location: LABCELL_X55_Y7_N14
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \A[0]~input_o\ & ( \inst4|inst6|inst|inst1|inst5~q\ ) ) # ( !\A[0]~input_o\ & ( \inst4|inst6|inst|inst1|inst5~q\ & ( 
-- (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) ) ) ) # ( \A[0]~input_o\ & ( !\inst4|inst6|inst|inst1|inst5~q\ & ( (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst5~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X55_Y7_N15
\inst4|inst6|inst|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst6~q\);

-- Location: LABCELL_X55_Y7_N16
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst4|inst6|inst|inst1|inst6~q\ & ( (((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # 
-- (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst6~q\,
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X55_Y7_N17
\inst4|inst6|inst|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst1|inst7~q\);

-- Location: LABCELL_X55_Y7_N2
\inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0_combout\ = ( \inst4|inst6|inst|inst1|inst7~q\ & ( !\inst4|inst6|inst|inst1|inst6~q\ ) ) # ( !\inst4|inst6|inst|inst1|inst7~q\ & ( \inst4|inst6|inst|inst1|inst6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst6~q\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	combout => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y7_N20
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ = CARRY(( VCC ) + ( !\inst4|inst6|inst|inst1|inst7~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	cin => GND,
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\);

-- Location: LABCELL_X55_Y7_N22
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(0) = SUM(( !\B[0]~input_o\ $ (\inst4|inst6|inst|inst1|inst7~q\) ) + ( \inst4|inst6|inst|inst|inst6~q\ ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ 
-- ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( !\B[0]~input_o\ $ (\inst4|inst6|inst|inst1|inst7~q\) ) + ( \inst4|inst6|inst|inst|inst6~q\ ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst4|inst6|inst|inst|ALT_INV_inst6~q\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(0),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: LABCELL_X55_Y7_N24
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(1) = SUM(( \inst4|inst6|inst|inst|inst5~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[1]~input_o\) ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( \inst4|inst6|inst|inst|inst5~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[1]~input_o\) ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	datad => \inst4|inst6|inst|inst|ALT_INV_inst5~q\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(1),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: LABCELL_X55_Y7_N26
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(2) = SUM(( !\B[2]~input_o\ $ (\inst4|inst6|inst|inst1|inst7~q\) ) + ( \inst4|inst6|inst|inst|inst4~q\ ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( !\B[2]~input_o\ $ (\inst4|inst6|inst|inst1|inst7~q\) ) + ( \inst4|inst6|inst|inst|inst4~q\ ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst4|inst6|inst|inst|ALT_INV_inst4~q\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(2),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: LABCELL_X55_Y7_N28
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(3) = SUM(( \inst4|inst6|inst|inst|inst3~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[3]~input_o\) ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( \inst4|inst6|inst|inst|inst3~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[3]~input_o\) ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	datad => \inst4|inst6|inst|inst|ALT_INV_inst3~q\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(3),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: LABCELL_X55_Y7_N30
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(4) = SUM(( !\B[4]~input_o\ $ (\inst4|inst6|inst|inst1|inst7~q\) ) + ( \inst4|inst6|inst|inst|inst2~q\ ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( !\B[4]~input_o\ $ (\inst4|inst6|inst|inst1|inst7~q\) ) + ( \inst4|inst6|inst|inst|inst2~q\ ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst4|inst6|inst|inst|ALT_INV_inst2~q\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(4),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: LABCELL_X55_Y7_N32
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(5) = SUM(( \inst4|inst6|inst|inst|inst1~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[5]~input_o\) ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ = CARRY(( \inst4|inst6|inst|inst|inst1~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[5]~input_o\) ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	datad => \inst4|inst6|inst|inst|ALT_INV_inst1~q\,
	dataf => \ALT_INV_B[5]~input_o\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(5),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\);

-- Location: LABCELL_X55_Y7_N34
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(6) = SUM(( \inst4|inst6|inst|inst|inst~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[6]~input_o\) ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ = CARRY(( \inst4|inst6|inst|inst|inst~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[6]~input_o\) ) + ( 
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	datad => \inst4|inst6|inst|inst|ALT_INV_inst~q\,
	dataf => \ALT_INV_B[6]~input_o\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(6),
	cout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\);

-- Location: LABCELL_X55_Y7_N36
\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(7) = SUM(( \inst4|inst6|inst|inst|inst~q\ ) + ( !\inst4|inst6|inst|inst1|inst7~q\ $ (\B[7]~input_o\) ) + ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst7~q\,
	datad => \inst4|inst6|inst|inst|ALT_INV_inst~q\,
	dataf => \ALT_INV_B[7]~input_o\,
	cin => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\,
	sumout => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(7));

-- Location: LABCELL_X55_Y7_N4
\inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = ( \inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) # ( !\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( 
-- ((\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (\inst4|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datad => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	dataf => \inst4|inst|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: FF_X55_Y7_N37
\inst4|inst6|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(7),
	asdata => \inst4|inst6|inst|inst|inst~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst~q\);

-- Location: FF_X55_Y7_N35
\inst4|inst6|inst|inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(6),
	asdata => \inst4|inst6|inst|inst|inst~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst1~q\);

-- Location: FF_X55_Y7_N33
\inst4|inst6|inst|inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(5),
	asdata => \inst4|inst6|inst|inst|inst1~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst2~q\);

-- Location: FF_X55_Y7_N31
\inst4|inst6|inst|inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(4),
	asdata => \inst4|inst6|inst|inst|inst2~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst3~q\);

-- Location: FF_X55_Y7_N29
\inst4|inst6|inst|inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(3),
	asdata => \inst4|inst6|inst|inst|inst3~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst4~q\);

-- Location: FF_X55_Y7_N27
\inst4|inst6|inst|inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(2),
	asdata => \inst4|inst6|inst|inst|inst4~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst5~q\);

-- Location: FF_X55_Y7_N25
\inst4|inst6|inst|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(1),
	asdata => \inst4|inst6|inst|inst|inst5~q\,
	sclr => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	sload => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst6~q\);

-- Location: LABCELL_X55_Y7_N0
\inst4|inst35|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst35|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = ( \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(0) & ( (!\inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) & (\A[7]~input_o\)) # 
-- (\inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) & (((\inst4|inst6|inst|inst|inst6~q\) # (\inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0_combout\)))) ) ) # ( 
-- !\inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|result\(0) & ( (!\inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) & (\A[7]~input_o\)) # (\inst4|inst9|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) & 
-- (((!\inst4|inst33|inst7|LPM_MUX_component|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & \inst4|inst6|inst|inst|inst6~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101001111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \inst4|inst33|inst7|LPM_MUX_component|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	datac => \inst4|inst6|inst|inst|ALT_INV_inst6~q\,
	datad => \inst4|inst9|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	dataf => \inst4|inst33|inst2|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(0),
	combout => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: FF_X55_Y7_N1
\inst4|inst6|inst|inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|inst35|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|inst|inst|inst7~q\);

-- Location: MLABCELL_X54_Y7_N8
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~4_combout\ = ( \OPCODE[0]~input_o\ & ( \inst4|inst6|inst|inst|inst7~q\ & ( ((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\) # 
-- (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\) ) ) ) # ( !\OPCODE[0]~input_o\ & ( \inst4|inst6|inst|inst|inst7~q\ & ( 
-- (((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\ & \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\)) # 
-- (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\) ) ) ) # ( \OPCODE[0]~input_o\ & ( !\inst4|inst6|inst|inst|inst7~q\ & ( (((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\ & 
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\) ) ) ) # ( 
-- !\OPCODE[0]~input_o\ & ( !\inst4|inst6|inst|inst|inst7~q\ & ( (((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\ & \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~7_combout\)) # 
-- (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~1_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111011101110111111101110111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~2_combout\,
	datab => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~1_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~3_combout\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~7_combout\,
	datae => \ALT_INV_OPCODE[0]~input_o\,
	dataf => \inst4|inst6|inst|inst|ALT_INV_inst7~q\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~4_combout\);

-- Location: FF_X54_Y7_N9
\inst19|LPM_MUX_component|auto_generated|external_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(7));

-- Location: MLABCELL_X57_Y7_N28
\inst3|inst9|inst2|inst|1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst2|inst|1~combout\ = ( \inst3|inst9|inst1|inst5~0_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) ) # ( !\inst3|inst9|inst1|inst5~0_combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	dataf => \inst3|inst9|inst1|ALT_INV_inst5~0_combout\,
	combout => \inst3|inst9|inst2|inst|1~combout\);

-- Location: MLABCELL_X57_Y7_N10
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\ = ( \OPCODE[0]~input_o\ & ( (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ & ((!\OPCODE[1]~input_o\) # (\inst3|inst|inst3|inst5~0_combout\))) ) ) # ( 
-- !\OPCODE[0]~input_o\ & ( \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst3|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\);

-- Location: MLABCELL_X57_Y7_N0
\inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\ = ( \B[6]~input_o\ & ( (!\OPCODE[1]~input_o\ & (((\OPCODE[0]~input_o\)) # (\A[6]~input_o\))) # (\OPCODE[1]~input_o\ & (!\A[6]~input_o\ $ (((\OPCODE[0]~input_o\ & 
-- !\inst3|inst10|inst1|inst5~0_combout\))))) ) ) # ( !\B[6]~input_o\ & ( (!\OPCODE[1]~input_o\ & (\A[6]~input_o\ & (\OPCODE[0]~input_o\))) # (\OPCODE[1]~input_o\ & (!\A[6]~input_o\ $ (((!\OPCODE[0]~input_o\) # (\inst3|inst10|inst1|inst5~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010101000101100001010101101101011011100110110101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_OPCODE[1]~input_o\,
	datac => \ALT_INV_OPCODE[0]~input_o\,
	datad => \inst3|inst10|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X57_Y7_N36
\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\ = ( \OPCODE[0]~input_o\ & ( (\OPCODE[1]~input_o\ & (!\inst3|inst|inst3|inst5~0_combout\ & \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OPCODE[1]~input_o\,
	datac => \inst3|inst|inst3|ALT_INV_inst5~0_combout\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X53_Y7_N18
\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1_combout\ = ( \A[6]~input_o\ & ( \A[4]~input_o\ & ( !\B[6]~input_o\ $ (((!\A[5]~input_o\ & \B[5]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( \A[4]~input_o\ & ( !\B[6]~input_o\ $ 
-- (((!\B[5]~input_o\) # (\A[5]~input_o\))) ) ) ) # ( \A[6]~input_o\ & ( !\A[4]~input_o\ & ( !\B[6]~input_o\ $ (((!\A[5]~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\))) # (\A[5]~input_o\ & (\B[4]~input_o\ & \B[5]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( 
-- !\A[4]~input_o\ & ( !\B[6]~input_o\ $ (((!\A[5]~input_o\ & (!\B[4]~input_o\ & !\B[5]~input_o\)) # (\A[5]~input_o\ & ((!\B[4]~input_o\) # (!\B[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110110100110100100100101100001111101001011111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X53_Y7_N4
\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0_combout\ = ( \A[6]~input_o\ & ( \B[6]~input_o\ & ( (!\A[5]~input_o\ & (((!\A[4]~input_o\) # (\B[5]~input_o\)) # (\B[4]~input_o\))) # (\A[5]~input_o\ & (\B[5]~input_o\ & ((!\A[4]~input_o\) # 
-- (\B[4]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ & ( (!\A[5]~input_o\ & (!\B[4]~input_o\ & (\A[4]~input_o\ & !\B[5]~input_o\))) # (\A[5]~input_o\ & ((!\B[5]~input_o\) # ((!\B[4]~input_o\ & \A[4]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( 
-- !\B[6]~input_o\ & ( (!\A[5]~input_o\ & (!\B[4]~input_o\ & (\A[4]~input_o\ & !\B[5]~input_o\))) # (\A[5]~input_o\ & ((!\B[5]~input_o\) # ((!\B[4]~input_o\ & \A[4]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\B[6]~input_o\ & ( (!\A[5]~input_o\ & 
-- (((!\A[4]~input_o\) # (\B[5]~input_o\)) # (\B[4]~input_o\))) # (\A[5]~input_o\ & (\B[5]~input_o\ & ((!\A[4]~input_o\) # (\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001011111011010111010000010001011101000001001010001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X54_Y7_N18
\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\ = ( \inst4|inst6|inst|inst1|inst~q\ & ( ((!\inst10|inst|inst|inst3|inst5~0_combout\ & ((\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0_combout\))) # 
-- (\inst10|inst|inst|inst3|inst5~0_combout\ & (\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1_combout\))) # (\OPCODE[0]~input_o\) ) ) # ( !\inst4|inst6|inst|inst1|inst~q\ & ( (!\OPCODE[0]~input_o\ & 
-- ((!\inst10|inst|inst|inst3|inst5~0_combout\ & ((\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~0_combout\))) # (\inst10|inst|inst|inst3|inst5~0_combout\ & (\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[0]~input_o\,
	datab => \inst10|inst|inst|inst3|ALT_INV_inst5~0_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~1_combout\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~0_combout\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst~q\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X57_Y7_N32
\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~3_combout\ = ( \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\ & ( \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\ & ( 
-- (((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\ & \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\)) # 
-- (\inst3|inst9|inst2|inst|1~combout\) ) ) ) # ( !\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\ & ( \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\ & ( 
-- ((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\ & \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\) ) ) ) # ( 
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\ & ( !\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\ & ( ((\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\ & 
-- \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\)) # (\inst3|inst9|inst2|inst|1~combout\) ) ) ) # ( !\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\ & ( 
-- !\inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~2_combout\ & ( (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\ & \inst19|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110101011100000011111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|inst2|inst|ALT_INV_1~combout\,
	datab => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~5_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~3_combout\,
	datae => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~6_combout\,
	dataf => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w6_n0_mux_dataout~2_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~3_combout\);

-- Location: FF_X57_Y7_N33
\inst19|LPM_MUX_component|auto_generated|external_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w6_n0_mux_dataout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(6));

-- Location: LABCELL_X53_Y7_N20
\inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ = ( \B[4]~input_o\ & ( \A[4]~input_o\ & ( (!\OPCODE[1]~input_o\ & ((!\A[5]~input_o\ & (\OPCODE[0]~input_o\ & \B[5]~input_o\)) # (\A[5]~input_o\ & ((\B[5]~input_o\) # 
-- (\OPCODE[0]~input_o\))))) # (\OPCODE[1]~input_o\ & (!\A[5]~input_o\ $ (!\OPCODE[0]~input_o\ $ (\B[5]~input_o\)))) ) ) ) # ( !\B[4]~input_o\ & ( \A[4]~input_o\ & ( (!\OPCODE[1]~input_o\ & ((!\A[5]~input_o\ & (\OPCODE[0]~input_o\ & \B[5]~input_o\)) # 
-- (\A[5]~input_o\ & ((\B[5]~input_o\) # (\OPCODE[0]~input_o\))))) # (\OPCODE[1]~input_o\ & (!\A[5]~input_o\ $ (!\OPCODE[0]~input_o\ $ (\B[5]~input_o\)))) ) ) ) # ( \B[4]~input_o\ & ( !\A[4]~input_o\ & ( (!\OPCODE[1]~input_o\ & ((!\A[5]~input_o\ & 
-- (\OPCODE[0]~input_o\ & \B[5]~input_o\)) # (\A[5]~input_o\ & ((\B[5]~input_o\) # (\OPCODE[0]~input_o\))))) # (\OPCODE[1]~input_o\ & (!\A[5]~input_o\ $ (!\OPCODE[0]~input_o\ $ (\B[5]~input_o\)))) ) ) ) # ( !\B[4]~input_o\ & ( !\A[4]~input_o\ & ( 
-- (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\OPCODE[1]~input_o\) # (\OPCODE[0]~input_o\)))) # (\A[5]~input_o\ & ((!\OPCODE[1]~input_o\ & ((\B[5]~input_o\) # (\OPCODE[0]~input_o\))) # (\OPCODE[1]~input_o\ & ((!\B[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111010000101100111100100010110011110010001011001111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_OPCODE[0]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X53_Y7_N12
\inst3|inst9|inst1|inst|1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst1|inst|1~combout\ = ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (((\B[4]~input_o\ & \A[4]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\B[4]~input_o\) # (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011010101001101010011010100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \inst3|inst9|inst1|inst|1~combout\);

-- Location: LABCELL_X53_Y7_N24
\inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\ = ( !\OPCODE[0]~input_o\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((!\A[4]~input_o\ & ((!\inst10|inst|inst|inst3|inst5~0_combout\) # (\B[4]~input_o\))) # (\A[4]~input_o\ & 
-- (\B[4]~input_o\ & !\inst10|inst|inst|inst3|inst5~0_combout\))))) ) ) # ( \OPCODE[0]~input_o\ & ( (((\inst4|inst6|inst|inst1|inst1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011010000101101000011110000111101001011110100100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \inst4|inst6|inst|inst1|ALT_INV_inst1~q\,
	datad => \inst10|inst|inst|inst3|ALT_INV_inst5~0_combout\,
	datae => \ALT_INV_OPCODE[0]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	datag => \ALT_INV_B[5]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X54_Y7_N36
\inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~0_combout\ = ( \inst3|inst9|inst1|inst|1~combout\ & ( \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\ & ( 
-- (((\inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ & \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\)) # 
-- (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\) ) ) ) # ( !\inst3|inst9|inst1|inst|1~combout\ & ( \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\ & ( 
-- ((\inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ & \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~3_combout\) ) ) ) # ( 
-- \inst3|inst9|inst1|inst|1~combout\ & ( !\inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\ & ( ((\inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ & 
-- \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\)) # (\inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~6_combout\) ) ) ) # ( !\inst3|inst9|inst1|inst|1~combout\ & ( 
-- !\inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~1_combout\ & ( (\inst19|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ & \inst19|LPM_MUX_component|auto_generated|l4_w7_n0_mux_dataout~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011111111100011111000111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\,
	datab => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~5_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~3_combout\,
	datad => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w7_n0_mux_dataout~6_combout\,
	datae => \inst3|inst9|inst1|inst|ALT_INV_1~combout\,
	dataf => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w5_n0_mux_dataout~1_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X54_Y7_N37
\inst19|LPM_MUX_component|auto_generated|external_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w5_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(5));

-- Location: MLABCELL_X52_Y7_N10
\inst19|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \OPCODE[0]~input_o\ & ( (\A[4]~input_o\) # (\B[4]~input_o\) ) ) # ( !\OPCODE[0]~input_o\ & ( (\B[4]~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011111111100000000010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X52_Y7_N30
\inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\ = ( \B[4]~input_o\ & ( !\A[4]~input_o\ ) ) # ( !\B[4]~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\);

-- Location: MLABCELL_X57_Y7_N18
\inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ = ( \OPCODE[0]~input_o\ & ( !\OPCODE[2]~input_o\ ) ) # ( !\OPCODE[0]~input_o\ & ( (!\OPCODE[2]~input_o\ & !\OPCODE[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[2]~input_o\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X57_Y7_N2
\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ = ( !\OPCODE[2]~input_o\ & ( \OPCODE[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OPCODE[1]~input_o\,
	dataf => \ALT_INV_OPCODE[2]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\);

-- Location: MLABCELL_X54_Y7_N16
\inst19|LPM_MUX_component|auto_generated|l2_w4_n1_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l2_w4_n1_mux_dataout~0_combout\ = ( \inst4|inst6|inst|inst1|inst2~q\ & ( (!\OPCODE[1]~input_o\ & ((!\inst10|inst|inst|inst3|inst5~0_combout\ $ (\inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\)) 
-- # (\OPCODE[0]~input_o\))) ) ) # ( !\inst4|inst6|inst|inst1|inst2~q\ & ( (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & (!\inst10|inst|inst|inst3|inst5~0_combout\ $ (\inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000100000000010000011010000011100001101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[0]~input_o\,
	datab => \inst10|inst|inst|inst3|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[2]~4_combout\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst2~q\,
	combout => \inst19|LPM_MUX_component|auto_generated|l2_w4_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X58_Y7_N24
\inst19|LPM_MUX_component|auto_generated|l4_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w4_n0_mux_dataout~0_combout\ = ( !\inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( (!\OPCODE[3]~input_o\ & (((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & 
-- (\inst19|LPM_MUX_component|auto_generated|l2_w4_n1_mux_dataout~0_combout\)) # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & ((\inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\)))))) ) ) # ( 
-- \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( (!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (((\inst19|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) 
-- # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (!\inst3|inst|inst3|inst5~0_combout\ $ (((!\inst18|LPM_COMPARE_component|auto_generated|data_wire[2]~4_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101000000000101010100010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[3]~input_o\,
	datab => \inst3|inst|inst3|ALT_INV_inst5~0_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datad => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[2]~4_combout\,
	datae => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\,
	dataf => \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode129w[3]~0_combout\,
	datag => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w4_n1_mux_dataout~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X58_Y7_N25
\inst19|LPM_MUX_component|auto_generated|external_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w4_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(4));

-- Location: LABCELL_X58_Y7_N6
\inst3|inst|inst2|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2|inst5~0_combout\ = ( \A[2]~input_o\ & ( (\inst3|inst|inst1|inst5~0_combout\) # (\B[2]~input_o\) ) ) # ( !\A[2]~input_o\ & ( (\B[2]~input_o\ & \inst3|inst|inst1|inst5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \inst3|inst|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \inst3|inst|inst2|inst5~0_combout\);

-- Location: LABCELL_X58_Y7_N18
\inst19|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \B[3]~input_o\ & ( (\A[3]~input_o\) # (\OPCODE[0]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\OPCODE[0]~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OPCODE[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X58_Y7_N16
\inst19|LPM_MUX_component|auto_generated|l2_w3_n1_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l2_w3_n1_mux_dataout~0_combout\ = ( \inst4|inst6|inst|inst1|inst3~q\ & ( (!\OPCODE[1]~input_o\ & ((!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\ $ 
-- (!\inst10|inst|inst|inst2|inst5~0_combout\)) # (\OPCODE[0]~input_o\))) ) ) # ( !\inst4|inst6|inst|inst1|inst3~q\ & ( (!\OPCODE[1]~input_o\ & (!\OPCODE[0]~input_o\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\ $ 
-- (!\inst10|inst|inst|inst2|inst5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000101010101000100010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[1]~input_o\,
	datab => \ALT_INV_OPCODE[0]~input_o\,
	datac => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~0_combout\,
	datad => \inst10|inst|inst|inst2|ALT_INV_inst5~0_combout\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst3~q\,
	combout => \inst19|LPM_MUX_component|auto_generated|l2_w3_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X58_Y7_N28
\inst19|LPM_MUX_component|auto_generated|l4_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w3_n0_mux_dataout~0_combout\ = ( !\inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( ((!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & 
-- ((\inst19|LPM_MUX_component|auto_generated|l2_w3_n1_mux_dataout~0_combout\))) # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\))))) ) ) # ( 
-- \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( (!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (((\inst19|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) 
-- # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~0_combout\ $ ((!\inst3|inst|inst2|inst5~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~0_combout\,
	datab => \inst3|inst|inst2|ALT_INV_inst5~0_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode129w[3]~0_combout\,
	datae => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_OPCODE[3]~input_o\,
	datag => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w3_n1_mux_dataout~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X58_Y7_N29
\inst19|LPM_MUX_component|auto_generated|external_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w3_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(3));

-- Location: LABCELL_X58_Y7_N12
\inst19|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \A[2]~input_o\ & ( (\OPCODE[0]~input_o\) # (\B[2]~input_o\) ) ) # ( !\A[2]~input_o\ & ( (\B[2]~input_o\ & \OPCODE[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_OPCODE[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X58_Y7_N14
\inst10|inst|inst|inst1|inst5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|inst|inst|inst1|inst5~0_combout\ = ( \B[1]~input_o\ & ( (!\A[1]~input_o\) # ((\B[0]~input_o\ & !\A[0]~input_o\)) ) ) # ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & (!\A[0]~input_o\ & !\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst10|inst|inst|inst1|inst5~0_combout\);

-- Location: LABCELL_X58_Y7_N8
\inst19|LPM_MUX_component|auto_generated|l2_w2_n1_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l2_w2_n1_mux_dataout~0_combout\ = ( \inst4|inst6|inst|inst1|inst4~q\ & ( (!\OPCODE[1]~input_o\ & ((!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\ $ 
-- (!\inst10|inst|inst|inst1|inst5~0_combout\)) # (\OPCODE[0]~input_o\))) ) ) # ( !\inst4|inst6|inst|inst1|inst4~q\ & ( (!\OPCODE[1]~input_o\ & (!\OPCODE[0]~input_o\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\ $ 
-- (!\inst10|inst|inst|inst1|inst5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000111100000110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~2_combout\,
	datab => \inst10|inst|inst|inst1|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_OPCODE[1]~input_o\,
	datad => \ALT_INV_OPCODE[0]~input_o\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst4~q\,
	combout => \inst19|LPM_MUX_component|auto_generated|l2_w2_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X58_Y7_N32
\inst19|LPM_MUX_component|auto_generated|l4_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w2_n0_mux_dataout~0_combout\ = ( !\inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( ((!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & 
-- ((\inst19|LPM_MUX_component|auto_generated|l2_w2_n1_mux_dataout~0_combout\))) # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\))))) ) ) # ( 
-- \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( (!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (((\inst19|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) 
-- # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[1]~2_combout\ $ ((!\inst3|inst|inst1|inst5~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[1]~2_combout\,
	datab => \inst3|inst|inst1|ALT_INV_inst5~0_combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode129w[3]~0_combout\,
	datae => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_OPCODE[3]~input_o\,
	datag => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w2_n1_mux_dataout~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X58_Y7_N33
\inst19|LPM_MUX_component|auto_generated|external_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w2_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(2));

-- Location: MLABCELL_X57_Y7_N14
\inst3|inst|inst|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst2~combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	combout => \inst3|inst|inst|inst2~combout\);

-- Location: LABCELL_X58_Y7_N38
\inst19|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = (!\B[1]~input_o\ & (\A[1]~input_o\ & \OPCODE[0]~input_o\)) # (\B[1]~input_o\ & ((\OPCODE[0]~input_o\) # (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_OPCODE[0]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X57_Y7_N22
\inst19|LPM_MUX_component|auto_generated|l2_w1_n1_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l2_w1_n1_mux_dataout~0_combout\ = ( \inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ & ( \inst4|inst6|inst|inst1|inst5~q\ & ( (!\OPCODE[1]~input_o\ & (((!\B[0]~input_o\) # (\OPCODE[0]~input_o\)) 
-- # (\A[0]~input_o\))) ) ) ) # ( !\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ & ( \inst4|inst6|inst|inst1|inst5~q\ & ( (!\OPCODE[1]~input_o\ & (((!\A[0]~input_o\ & \B[0]~input_o\)) # (\OPCODE[0]~input_o\))) ) ) ) # ( 
-- \inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ & ( !\inst4|inst6|inst|inst1|inst5~q\ & ( (!\OPCODE[1]~input_o\ & (!\OPCODE[0]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) ) ) ) # ( 
-- !\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ & ( !\inst4|inst6|inst|inst1|inst5~q\ & ( (!\A[0]~input_o\ & (!\OPCODE[1]~input_o\ & (\B[0]~input_o\ & !\OPCODE[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000110001000000000000001000110011001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_OPCODE[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_OPCODE[0]~input_o\,
	datae => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[0]~1_combout\,
	dataf => \inst4|inst6|inst|inst1|ALT_INV_inst5~q\,
	combout => \inst19|LPM_MUX_component|auto_generated|l2_w1_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X57_Y7_N24
\inst19|LPM_MUX_component|auto_generated|l4_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w1_n0_mux_dataout~0_combout\ = ( !\inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( ((!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & 
-- ((\inst19|LPM_MUX_component|auto_generated|l2_w1_n1_mux_dataout~0_combout\))) # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\))))) ) ) # ( 
-- \inst19|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ & ( (!\OPCODE[3]~input_o\ & ((!\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (((\inst19|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) 
-- # (\inst2|LPM_DECODE_component|auto_generated|w_anode129w[3]~0_combout\ & (!\inst18|LPM_COMPARE_component|auto_generated|data_wire[0]~1_combout\ $ ((!\inst3|inst|inst|inst2~combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_COMPARE_component|auto_generated|ALT_INV_data_wire[0]~1_combout\,
	datab => \inst3|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst2|LPM_DECODE_component|auto_generated|ALT_INV_w_anode129w[3]~0_combout\,
	datae => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_OPCODE[3]~input_o\,
	datag => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l2_w1_n1_mux_dataout~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X57_Y7_N25
\inst19|LPM_MUX_component|auto_generated|external_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w1_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(1));

-- Location: LABCELL_X55_Y7_N8
\inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \OPCODE[2]~input_o\ & ( \B[0]~input_o\ & ( (!\OPCODE[1]~input_o\ & ((!\OPCODE[0]~input_o\ & (!\A[0]~input_o\)) # (\OPCODE[0]~input_o\ & ((\inst4|inst6|inst|inst1|inst6~q\))))) ) 
-- ) ) # ( !\OPCODE[2]~input_o\ & ( \B[0]~input_o\ & ( (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (\A[0]~input_o\))) # (\OPCODE[1]~input_o\ & (!\A[0]~input_o\)) ) ) ) # ( \OPCODE[2]~input_o\ & ( !\B[0]~input_o\ & ( (!\OPCODE[1]~input_o\ & 
-- ((!\OPCODE[0]~input_o\ & (\A[0]~input_o\)) # (\OPCODE[0]~input_o\ & ((\inst4|inst6|inst|inst1|inst6~q\))))) ) ) ) # ( !\OPCODE[2]~input_o\ & ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & ((\OPCODE[0]~input_o\) # (\OPCODE[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011001000000010101001101110011011101000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCODE[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_OPCODE[0]~input_o\,
	datad => \inst4|inst6|inst|inst1|ALT_INV_inst6~q\,
	datae => \ALT_INV_OPCODE[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X54_Y7_N26
\inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ = ( \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & ( !\OPCODE[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OPCODE[3]~input_o\,
	dataf => \inst19|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	combout => \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X54_Y7_N27
\inst19|LPM_MUX_component|auto_generated|external_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst19|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|LPM_MUX_component|auto_generated|external_reg\(0));

ww_READY <= \READY~output_o\;

ww_ZERO <= \ZERO~output_o\;

ww_DECODE(15) <= \DECODE[15]~output_o\;

ww_DECODE(14) <= \DECODE[14]~output_o\;

ww_DECODE(13) <= \DECODE[13]~output_o\;

ww_DECODE(12) <= \DECODE[12]~output_o\;

ww_DECODE(11) <= \DECODE[11]~output_o\;

ww_DECODE(10) <= \DECODE[10]~output_o\;

ww_DECODE(9) <= \DECODE[9]~output_o\;

ww_DECODE(8) <= \DECODE[8]~output_o\;

ww_DECODE(7) <= \DECODE[7]~output_o\;

ww_DECODE(6) <= \DECODE[6]~output_o\;

ww_DECODE(5) <= \DECODE[5]~output_o\;

ww_DECODE(4) <= \DECODE[4]~output_o\;

ww_DECODE(3) <= \DECODE[3]~output_o\;

ww_DECODE(2) <= \DECODE[2]~output_o\;

ww_DECODE(1) <= \DECODE[1]~output_o\;

ww_DECODE(0) <= \DECODE[0]~output_o\;

\ww_OUT\(7) <= \OUT[7]~output_o\;

\ww_OUT\(6) <= \OUT[6]~output_o\;

\ww_OUT\(5) <= \OUT[5]~output_o\;

\ww_OUT\(4) <= \OUT[4]~output_o\;

\ww_OUT\(3) <= \OUT[3]~output_o\;

\ww_OUT\(2) <= \OUT[2]~output_o\;

\ww_OUT\(1) <= \OUT[1]~output_o\;

\ww_OUT\(0) <= \OUT[0]~output_o\;
END structure;


