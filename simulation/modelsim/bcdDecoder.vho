-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "07/08/2018 18:33:50"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcdDecoder IS
    PORT (
	A : OUT std_logic;
	Entrada1 : IN std_logic;
	Entrada2 : IN std_logic;
	Entrada4 : IN std_logic;
	Entrada3 : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END bcdDecoder;

-- Design Ports Information
-- A	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada2	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada4	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada1	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada3	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcdDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Entrada1 : std_logic;
SIGNAL ww_Entrada2 : std_logic;
SIGNAL ww_Entrada4 : std_logic;
SIGNAL ww_Entrada3 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Entrada3~input_o\ : std_logic;
SIGNAL \Entrada4~input_o\ : std_logic;
SIGNAL \Entrada1~input_o\ : std_logic;
SIGNAL \Entrada2~input_o\ : std_logic;
SIGNAL \and1~0_combout\ : std_logic;
SIGNAL \and2~0_combout\ : std_logic;
SIGNAL \or8~combout\ : std_logic;
SIGNAL \or8~0_combout\ : std_logic;
SIGNAL \or13~combout\ : std_logic;
SIGNAL \ALT_INV_Entrada3~input_o\ : std_logic;
SIGNAL \ALT_INV_Entrada1~input_o\ : std_logic;
SIGNAL \ALT_INV_Entrada4~input_o\ : std_logic;
SIGNAL \ALT_INV_Entrada2~input_o\ : std_logic;
SIGNAL \ALT_INV_or8~0_combout\ : std_logic;

BEGIN

A <= ww_A;
ww_Entrada1 <= Entrada1;
ww_Entrada2 <= Entrada2;
ww_Entrada4 <= Entrada4;
ww_Entrada3 <= Entrada3;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Entrada3~input_o\ <= NOT \Entrada3~input_o\;
\ALT_INV_Entrada1~input_o\ <= NOT \Entrada1~input_o\;
\ALT_INV_Entrada4~input_o\ <= NOT \Entrada4~input_o\;
\ALT_INV_Entrada2~input_o\ <= NOT \Entrada2~input_o\;
\ALT_INV_or8~0_combout\ <= NOT \or8~0_combout\;

-- Location: IOOBUF_X54_Y20_N56
\A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \and1~0_combout\,
	devoe => ww_devoe,
	o => ww_A);

-- Location: IOOBUF_X54_Y20_N5
\B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \and2~0_combout\,
	devoe => ww_devoe,
	o => ww_B);

-- Location: IOOBUF_X16_Y0_N76
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X54_Y20_N39
\D~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \or8~combout\,
	devoe => ww_devoe,
	o => ww_D);

-- Location: IOOBUF_X54_Y18_N62
\E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Entrada4~input_o\,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X54_Y19_N22
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_or8~0_combout\,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOOBUF_X54_Y20_N22
\G~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \or13~combout\,
	devoe => ww_devoe,
	o => ww_G);

-- Location: IOIBUF_X54_Y19_N4
\Entrada3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entrada3,
	o => \Entrada3~input_o\);

-- Location: IOIBUF_X54_Y18_N44
\Entrada4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entrada4,
	o => \Entrada4~input_o\);

-- Location: IOIBUF_X54_Y21_N55
\Entrada1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entrada1,
	o => \Entrada1~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\Entrada2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entrada2,
	o => \Entrada2~input_o\);

-- Location: LABCELL_X53_Y20_N0
\and1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \and1~0_combout\ = ( \Entrada1~input_o\ & ( \Entrada2~input_o\ ) ) # ( !\Entrada1~input_o\ & ( \Entrada2~input_o\ ) ) # ( \Entrada1~input_o\ & ( !\Entrada2~input_o\ & ( !\Entrada4~input_o\ ) ) ) # ( !\Entrada1~input_o\ & ( !\Entrada2~input_o\ & ( 
-- (!\Entrada4~input_o\) # (\Entrada3~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Entrada3~input_o\,
	datac => \ALT_INV_Entrada4~input_o\,
	datae => \ALT_INV_Entrada1~input_o\,
	dataf => \ALT_INV_Entrada2~input_o\,
	combout => \and1~0_combout\);

-- Location: LABCELL_X53_Y20_N9
\and2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \and2~0_combout\ = ( \Entrada1~input_o\ & ( \Entrada2~input_o\ & ( (!\Entrada4~input_o\) # (\Entrada3~input_o\) ) ) ) # ( !\Entrada1~input_o\ & ( \Entrada2~input_o\ & ( (!\Entrada4~input_o\ & !\Entrada3~input_o\) ) ) ) # ( \Entrada1~input_o\ & ( 
-- !\Entrada2~input_o\ ) ) # ( !\Entrada1~input_o\ & ( !\Entrada2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100000101000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Entrada4~input_o\,
	datac => \ALT_INV_Entrada3~input_o\,
	datae => \ALT_INV_Entrada1~input_o\,
	dataf => \ALT_INV_Entrada2~input_o\,
	combout => \and2~0_combout\);

-- Location: LABCELL_X53_Y20_N45
or8 : cyclonev_lcell_comb
-- Equation(s):
-- \or8~combout\ = ( \Entrada4~input_o\ & ( \Entrada2~input_o\ & ( !\Entrada3~input_o\ ) ) ) # ( !\Entrada4~input_o\ & ( \Entrada2~input_o\ ) ) # ( \Entrada4~input_o\ & ( !\Entrada2~input_o\ ) ) # ( !\Entrada4~input_o\ & ( !\Entrada2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Entrada3~input_o\,
	datae => \ALT_INV_Entrada4~input_o\,
	dataf => \ALT_INV_Entrada2~input_o\,
	combout => \or8~combout\);

-- Location: LABCELL_X53_Y19_N0
\or8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \or8~0_combout\ = ( \Entrada4~input_o\ & ( \Entrada3~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Entrada3~input_o\,
	datae => \ALT_INV_Entrada4~input_o\,
	combout => \or8~0_combout\);

-- Location: LABCELL_X53_Y20_N18
or13 : cyclonev_lcell_comb
-- Equation(s):
-- \or13~combout\ = ( \Entrada4~input_o\ & ( \Entrada2~input_o\ ) ) # ( !\Entrada4~input_o\ & ( \Entrada2~input_o\ ) ) # ( \Entrada4~input_o\ & ( !\Entrada2~input_o\ ) ) # ( !\Entrada4~input_o\ & ( !\Entrada2~input_o\ & ( \Entrada3~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Entrada3~input_o\,
	datae => \ALT_INV_Entrada4~input_o\,
	dataf => \ALT_INV_Entrada2~input_o\,
	combout => \or13~combout\);

-- Location: LABCELL_X32_Y35_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


