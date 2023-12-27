-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/07/2023 14:52:04"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	JK_FF IS
    PORT (
	J : IN std_logic;
	K : IN std_logic;
	Q : BUFFER std_logic;
	Qbar : BUFFER std_logic;
	clk : IN std_logic;
	En : IN std_logic;
	reset : IN std_logic;
	pre : IN std_logic
	);
END JK_FF;

-- Design Ports Information
-- Q	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qbar	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JK_FF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qbar : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pre : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qbar~output_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \pre~input_o\ : std_logic;
SIGNAL \Q~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Q~9_combout\ : std_logic;
SIGNAL \Q~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \Q~7_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Q~reg0_emulated_q\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Qbar~6_combout\ : std_logic;
SIGNAL \Qbar~7_combout\ : std_logic;
SIGNAL \Qbar~1_combout\ : std_logic;
SIGNAL \Qbar~3_combout\ : std_logic;
SIGNAL \Qbar~reg0_emulated_q\ : std_logic;
SIGNAL \Qbar~2_combout\ : std_logic;
SIGNAL \ALT_INV_Qbar~7_combout\ : std_logic;
SIGNAL \ALT_INV_Q~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_J <= J;
ww_K <= K;
Q <= ww_Q;
Qbar <= ww_Qbar;
ww_clk <= clk;
ww_En <= En;
ww_reset <= reset;
ww_pre <= pre;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Qbar~7_combout\ <= NOT \Qbar~7_combout\;
\ALT_INV_Q~0_combout\ <= NOT \Q~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y21_N16
\Q~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~2_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\Qbar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Qbar~2_combout\,
	devoe => ww_devoe,
	o => \Qbar~output_o\);

-- Location: IOIBUF_X14_Y21_N1
\En~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: IOIBUF_X14_Y21_N29
\pre~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pre,
	o => \pre~input_o\);

-- Location: LCCOMB_X13_Y20_N30
\Q~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~8_combout\ = (\En~input_o\ & \pre~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \En~input_o\,
	datad => \pre~input_o\,
	combout => \Q~8_combout\);

-- Location: IOIBUF_X14_Y21_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X13_Y20_N4
\Q~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~9_combout\ = (\En~input_o\ & (\reset~input_o\ & !\pre~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \En~input_o\,
	datac => \reset~input_o\,
	datad => \pre~input_o\,
	combout => \Q~9_combout\);

-- Location: LCCOMB_X13_Y20_N24
\Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~1_combout\ = (!\Q~9_combout\ & ((\Q~8_combout\) # (\Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q~8_combout\,
	datac => \Q~9_combout\,
	datad => \Q~1_combout\,
	combout => \Q~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X12_Y21_N29
\K~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: IOIBUF_X12_Y21_N8
\J~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: LCCOMB_X13_Y20_N12
\Q~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~7_combout\ = (\J~input_o\ & ((!\Q~2_combout\) # (!\K~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datac => \Q~2_combout\,
	datad => \J~input_o\,
	combout => \Q~7_combout\);

-- Location: LCCOMB_X13_Y20_N10
\Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = \Q~1_combout\ $ (((\En~input_o\ & ((\Q~7_combout\))) # (!\En~input_o\ & (\Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~2_combout\,
	datab => \En~input_o\,
	datac => \Q~7_combout\,
	datad => \Q~1_combout\,
	combout => \Q~3_combout\);

-- Location: LCCOMB_X13_Y20_N18
\Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = (\Q~8_combout\) # (\Q~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~8_combout\,
	datad => \Q~9_combout\,
	combout => \Q~0_combout\);

-- Location: FF_X13_Y20_N11
\Q~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~3_combout\,
	clrn => \ALT_INV_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q~reg0_emulated_q\);

-- Location: LCCOMB_X13_Y20_N22
\Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = (!\Q~9_combout\ & ((\Q~8_combout\) # (\Q~1_combout\ $ (\Q~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~1_combout\,
	datab => \Q~8_combout\,
	datac => \Q~9_combout\,
	datad => \Q~reg0_emulated_q\,
	combout => \Q~2_combout\);

-- Location: LCCOMB_X13_Y20_N20
\Qbar~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Qbar~6_combout\ = \Qbar~2_combout\ $ (\K~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qbar~2_combout\,
	datad => \K~input_o\,
	combout => \Qbar~6_combout\);

-- Location: LCCOMB_X13_Y20_N6
\Qbar~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Qbar~7_combout\ = (\pre~input_o\) # ((\reset~input_o\) # (!\En~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pre~input_o\,
	datac => \reset~input_o\,
	datad => \En~input_o\,
	combout => \Qbar~7_combout\);

-- Location: LCCOMB_X13_Y20_N26
\Qbar~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Qbar~1_combout\ = (\Qbar~7_combout\ & ((!\Q~2_combout\))) # (!\Qbar~7_combout\ & (\Qbar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qbar~1_combout\,
	datac => \Q~2_combout\,
	datad => \Qbar~7_combout\,
	combout => \Qbar~1_combout\);

-- Location: LCCOMB_X13_Y20_N14
\Qbar~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Qbar~3_combout\ = \Qbar~1_combout\ $ ((((\Qbar~6_combout\ & \Q~2_combout\)) # (!\J~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qbar~6_combout\,
	datab => \J~input_o\,
	datac => \Qbar~1_combout\,
	datad => \Q~2_combout\,
	combout => \Qbar~3_combout\);

-- Location: FF_X13_Y20_N15
\Qbar~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Qbar~3_combout\,
	clrn => \ALT_INV_Qbar~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Qbar~reg0_emulated_q\);

-- Location: LCCOMB_X13_Y20_N28
\Qbar~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Qbar~2_combout\ = (\Qbar~7_combout\ & (!\Q~2_combout\)) # (!\Qbar~7_combout\ & ((\Qbar~reg0_emulated_q\ $ (\Qbar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~2_combout\,
	datab => \Qbar~reg0_emulated_q\,
	datac => \Qbar~1_combout\,
	datad => \Qbar~7_combout\,
	combout => \Qbar~2_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Q <= \Q~output_o\;

ww_Qbar <= \Qbar~output_o\;
END structure;


