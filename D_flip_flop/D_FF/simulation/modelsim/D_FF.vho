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

-- DATE "11/07/2023 15:25:55"

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

ENTITY 	D_FF IS
    PORT (
	D : IN std_logic;
	En : IN std_logic;
	reset : IN std_logic;
	pre : IN std_logic;
	clk : IN std_logic;
	Q : BUFFER std_logic;
	Qbar : BUFFER std_logic
	);
END D_FF;

-- Design Ports Information
-- Q	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qbar	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF D_FF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pre : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qbar : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qbar~output_o\ : std_logic;
SIGNAL \pre~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \Jk1|Q~7_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Jk1|Q~8_combout\ : std_logic;
SIGNAL \Jk1|Q~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Jk1|Q~3_combout\ : std_logic;
SIGNAL \Jk1|Q~0_combout\ : std_logic;
SIGNAL \Jk1|Q~_emulated_q\ : std_logic;
SIGNAL \Jk1|Q~2_combout\ : std_logic;
SIGNAL \Jk1|Qbar~6_combout\ : std_logic;
SIGNAL \Jk1|Qbar~1_combout\ : std_logic;
SIGNAL \Jk1|Qbar~3_combout\ : std_logic;
SIGNAL \Jk1|Qbar~_emulated_q\ : std_logic;
SIGNAL \Jk1|Qbar~2_combout\ : std_logic;
SIGNAL \Jk1|ALT_INV_Qbar~6_combout\ : std_logic;
SIGNAL \Jk1|ALT_INV_Q~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_D <= D;
ww_En <= En;
ww_reset <= reset;
ww_pre <= pre;
ww_clk <= clk;
Q <= ww_Q;
Qbar <= ww_Qbar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\Jk1|ALT_INV_Qbar~6_combout\ <= NOT \Jk1|Qbar~6_combout\;
\Jk1|ALT_INV_Q~0_combout\ <= NOT \Jk1|Q~0_combout\;
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

-- Location: IOOBUF_X14_Y0_N2
\Q~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Jk1|Q~2_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Qbar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Jk1|Qbar~2_combout\,
	devoe => ww_devoe,
	o => \Qbar~output_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: IOIBUF_X16_Y0_N8
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

-- Location: LCCOMB_X16_Y1_N8
\Jk1|Q~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Q~7_combout\ = (\pre~input_o\ & \En~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pre~input_o\,
	datac => \En~input_o\,
	combout => \Jk1|Q~7_combout\);

-- Location: IOIBUF_X19_Y0_N22
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

-- Location: LCCOMB_X16_Y1_N14
\Jk1|Q~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Q~8_combout\ = (\En~input_o\ & (!\pre~input_o\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datac => \pre~input_o\,
	datad => \reset~input_o\,
	combout => \Jk1|Q~8_combout\);

-- Location: LCCOMB_X16_Y1_N28
\Jk1|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Q~1_combout\ = (!\Jk1|Q~8_combout\ & ((\Jk1|Q~7_combout\) # (\Jk1|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jk1|Q~7_combout\,
	datac => \Jk1|Q~8_combout\,
	datad => \Jk1|Q~1_combout\,
	combout => \Jk1|Q~1_combout\);

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

-- Location: IOIBUF_X16_Y0_N29
\D~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X16_Y1_N20
\Jk1|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Q~3_combout\ = \Jk1|Q~1_combout\ $ (((\En~input_o\ & (\D~input_o\)) # (!\En~input_o\ & ((\Jk1|Q~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \Jk1|Q~1_combout\,
	datac => \En~input_o\,
	datad => \Jk1|Q~2_combout\,
	combout => \Jk1|Q~3_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Jk1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Q~0_combout\ = (\Jk1|Q~7_combout\) # (\Jk1|Q~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jk1|Q~7_combout\,
	datab => \Jk1|Q~8_combout\,
	combout => \Jk1|Q~0_combout\);

-- Location: FF_X16_Y1_N21
\Jk1|Q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Jk1|Q~3_combout\,
	clrn => \Jk1|ALT_INV_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Jk1|Q~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N10
\Jk1|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Q~2_combout\ = (!\Jk1|Q~8_combout\ & ((\Jk1|Q~7_combout\) # (\Jk1|Q~1_combout\ $ (\Jk1|Q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jk1|Q~7_combout\,
	datab => \Jk1|Q~1_combout\,
	datac => \Jk1|Q~8_combout\,
	datad => \Jk1|Q~_emulated_q\,
	combout => \Jk1|Q~2_combout\);

-- Location: LCCOMB_X16_Y1_N4
\Jk1|Qbar~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Qbar~6_combout\ = (\reset~input_o\) # ((\pre~input_o\) # (!\En~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \pre~input_o\,
	datad => \En~input_o\,
	combout => \Jk1|Qbar~6_combout\);

-- Location: LCCOMB_X16_Y1_N22
\Jk1|Qbar~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Qbar~1_combout\ = (\Jk1|Qbar~6_combout\ & ((!\Jk1|Q~2_combout\))) # (!\Jk1|Qbar~6_combout\ & (\Jk1|Qbar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jk1|Qbar~1_combout\,
	datac => \Jk1|Qbar~6_combout\,
	datad => \Jk1|Q~2_combout\,
	combout => \Jk1|Qbar~1_combout\);

-- Location: LCCOMB_X16_Y1_N18
\Jk1|Qbar~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Qbar~3_combout\ = \Jk1|Qbar~1_combout\ $ ((((\Jk1|Qbar~2_combout\ & \Jk1|Q~2_combout\)) # (!\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \Jk1|Qbar~2_combout\,
	datac => \Jk1|Qbar~1_combout\,
	datad => \Jk1|Q~2_combout\,
	combout => \Jk1|Qbar~3_combout\);

-- Location: FF_X16_Y1_N19
\Jk1|Qbar~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Jk1|Qbar~3_combout\,
	clrn => \Jk1|ALT_INV_Qbar~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Jk1|Qbar~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N2
\Jk1|Qbar~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Jk1|Qbar~2_combout\ = (\Jk1|Qbar~6_combout\ & (((!\Jk1|Q~2_combout\)))) # (!\Jk1|Qbar~6_combout\ & (\Jk1|Qbar~1_combout\ $ (((\Jk1|Qbar~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jk1|Qbar~6_combout\,
	datab => \Jk1|Qbar~1_combout\,
	datac => \Jk1|Q~2_combout\,
	datad => \Jk1|Qbar~_emulated_q\,
	combout => \Jk1|Qbar~2_combout\);

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


