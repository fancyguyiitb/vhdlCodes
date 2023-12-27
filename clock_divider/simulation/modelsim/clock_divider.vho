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

-- DATE "10/13/2023 17:16:29"

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

ENTITY 	led IS
    PORT (
	clock : IN std_logic;
	sw : IN std_logic;
	reset : IN std_logic;
	led : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END led;

-- Design Ports Information
-- led[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF led IS
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
SIGNAL ww_sw : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \new_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \beg[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \parity~0_combout\ : std_logic;
SIGNAL \new_clock~0_combout\ : std_logic;
SIGNAL \new_clock~1_combout\ : std_logic;
SIGNAL \new_clock~feeder_combout\ : std_logic;
SIGNAL \new_clock~q\ : std_logic;
SIGNAL \new_clock~clkctrl_outclk\ : std_logic;
SIGNAL \sw~input_o\ : std_logic;
SIGNAL \led_parity[1]~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \n_counter~3_combout\ : std_logic;
SIGNAL \n_counter~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \n_counter~5_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \n_counter~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \n_counter~7_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \n_counter~8_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \n_counter~9_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \n_counter~10_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \n_counter~11_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \n_counter~12_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \n_counter~13_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \n_counter~14_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \n_counter~15_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \n_counter~16_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \n_counter~17_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \n_counter~18_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \n_counter~19_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \n_counter~20_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \n_counter~21_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \n_counter~22_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \n_counter~23_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \n_counter~24_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \n_counter~25_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \n_counter~26_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \n_counter~27_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \n_counter~28_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \n_counter~29_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \n_counter~30_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \n_counter~31_combout\ : std_logic;
SIGNAL \n_counter[31]~34_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \n_counter~32_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \n_counter~33_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \n_counter[31]~35_combout\ : std_logic;
SIGNAL \n_counter[9]~0_combout\ : std_logic;
SIGNAL \n_counter[9]~1_combout\ : std_logic;
SIGNAL \n_counter~2_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led[0]~reg0_q\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \led~3_combout\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;
SIGNAL \led~4_combout\ : std_logic;
SIGNAL \led[4]~reg0_q\ : std_logic;
SIGNAL \led~5_combout\ : std_logic;
SIGNAL \led[5]~reg0_q\ : std_logic;
SIGNAL \led~6_combout\ : std_logic;
SIGNAL \led[6]~reg0_q\ : std_logic;
SIGNAL \led~7_combout\ : std_logic;
SIGNAL \led[7]~reg0_q\ : std_logic;
SIGNAL n_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL led_parity : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL beg : std_logic_vector(31 DOWNTO 0);
SIGNAL parity : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_sw~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_sw <= sw;
ww_reset <= reset;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\new_clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \new_clock~q\);
\ALT_INV_sw~input_o\ <= NOT \sw~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y25_N16
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

-- Location: IOOBUF_X16_Y0_N16
\led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X28_Y26_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y26_N0
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (!\LessThan0~12_combout\ & !\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~50_combout\);

-- Location: FF_X27_Y26_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X28_Y26_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y26_N2
\Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~2_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~47_combout\);

-- Location: FF_X30_Y26_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X28_Y26_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y26_N2
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (!\LessThan0~12_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~4_combout\,
	combout => \Add0~48_combout\);

-- Location: FF_X27_Y26_N3
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X28_Y26_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X30_Y26_N12
\Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~6_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~49_combout\);

-- Location: FF_X30_Y26_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X28_Y26_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X29_Y26_N16
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (!\LessThan0~12_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \Add0~51_combout\);

-- Location: FF_X29_Y26_N17
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X28_Y26_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X29_Y26_N10
\Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (!\LessThan0~12_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~55_combout\);

-- Location: FF_X29_Y26_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X28_Y26_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y26_N14
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (!\LessThan0~12_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~12_combout\,
	combout => \Add0~52_combout\);

-- Location: FF_X29_Y26_N15
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X28_Y26_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X29_Y26_N24
\Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (!\LessThan0~12_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~53_combout\);

-- Location: FF_X29_Y26_N25
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X28_Y26_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X29_Y26_N28
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Add0~16_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~54_combout\);

-- Location: FF_X29_Y26_N29
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X28_Y26_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X29_Y26_N0
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (!\LessThan0~12_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~18_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X29_Y26_N1
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X28_Y26_N20
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~22\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X30_Y26_N10
\Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~21_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~21_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~59_combout\);

-- Location: FF_X30_Y26_N11
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X28_Y26_N22
\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (count(11) & (!\Add0~22\)) # (!count(11) & ((\Add0~22\) # (GND)))
-- \Add0~24\ = CARRY((!\Add0~22\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X30_Y26_N20
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\Add0~23_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~23_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~60_combout\);

-- Location: FF_X30_Y26_N21
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X28_Y26_N24
\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (count(12) & (\Add0~24\ $ (GND))) # (!count(12) & (!\Add0~24\ & VCC))
-- \Add0~26\ = CARRY((count(12) & !\Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X30_Y26_N4
\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~25_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~25_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~27_combout\);

-- Location: FF_X30_Y26_N5
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X28_Y26_N26
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(13) & (!\Add0~26\)) # (!count(13) & ((\Add0~26\) # (GND)))
-- \Add0~29\ = CARRY((!\Add0~26\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X30_Y26_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~28_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~56_combout\);

-- Location: FF_X30_Y26_N25
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X28_Y26_N28
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(14) & (\Add0~29\ $ (GND))) # (!count(14) & (!\Add0~29\ & VCC))
-- \Add0~31\ = CARRY((count(14) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X30_Y26_N30
\Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~30_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~57_combout\);

-- Location: FF_X30_Y26_N31
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X28_Y26_N30
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(15) & (!\Add0~31\)) # (!count(15) & ((\Add0~31\) # (GND)))
-- \Add0~33\ = CARRY((!\Add0~31\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X30_Y26_N8
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\Add0~32_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~58_combout\);

-- Location: FF_X30_Y26_N9
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X28_Y25_N0
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(16) & (\Add0~33\ $ (GND))) # (!count(16) & (!\Add0~33\ & VCC))
-- \Add0~35\ = CARRY((count(16) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X29_Y26_N30
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (!\LessThan0~12_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~34_combout\,
	combout => \Add0~36_combout\);

-- Location: FF_X29_Y26_N31
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X28_Y25_N2
\Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (count(17) & (!\Add0~35\)) # (!count(17) & ((\Add0~35\) # (GND)))
-- \Add0~38\ = CARRY((!\Add0~35\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X29_Y26_N20
\Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (!\LessThan0~12_combout\ & \Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~37_combout\,
	combout => \Add0~39_combout\);

-- Location: FF_X29_Y26_N21
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X28_Y25_N4
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(18) & (\Add0~38\ $ (GND))) # (!count(18) & (!\Add0~38\ & VCC))
-- \Add0~41\ = CARRY((count(18) & !\Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X27_Y26_N24
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (!\LessThan0~12_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~40_combout\,
	combout => \Add0~64_combout\);

-- Location: FF_X27_Y26_N25
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X28_Y25_N6
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(19) & (!\Add0~41\)) # (!count(19) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X27_Y26_N10
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (!\LessThan0~12_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~42_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X27_Y26_N11
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X28_Y25_N8
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(20) & (\Add0~43\ $ (GND))) # (!count(20) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(20) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X27_Y26_N28
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (!\LessThan0~12_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~44_combout\,
	combout => \Add0~46_combout\);

-- Location: FF_X27_Y26_N29
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X28_Y25_N10
\Add0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (count(21) & (!\Add0~45\)) # (!count(21) & ((\Add0~45\) # (GND)))
-- \Add0~62\ = CARRY((!\Add0~45\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X27_Y26_N30
\Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (!\LessThan0~12_combout\ & \Add0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~12_combout\,
	datac => \Add0~61_combout\,
	combout => \Add0~63_combout\);

-- Location: FF_X27_Y26_N31
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X28_Y25_N12
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (count(22) & (\Add0~62\ $ (GND))) # (!count(22) & (!\Add0~62\ & VCC))
-- \Add0~67\ = CARRY((count(22) & !\Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X30_Y26_N14
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\LessThan0~12_combout\ & \Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~66_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X30_Y26_N15
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X28_Y25_N14
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (count(23) & (!\Add0~67\)) # (!count(23) & ((\Add0~67\) # (GND)))
-- \Add0~70\ = CARRY((!\Add0~67\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X30_Y26_N0
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (!\LessThan0~12_combout\ & \Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~69_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X30_Y26_N1
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X28_Y25_N16
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (count(24) & (\Add0~70\ $ (GND))) # (!count(24) & (!\Add0~70\ & VCC))
-- \Add0~73\ = CARRY((count(24) & !\Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X30_Y26_N26
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (!\LessThan0~12_combout\ & \Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datad => \Add0~72_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X30_Y26_N27
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X28_Y25_N18
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (count(25) & (!\Add0~73\)) # (!count(25) & ((\Add0~73\) # (GND)))
-- \Add0~76\ = CARRY((!\Add0~73\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X29_Y26_N22
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~75_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~75_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X29_Y26_N23
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X28_Y25_N20
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (count(26) & (\Add0~76\ $ (GND))) # (!count(26) & (!\Add0~76\ & VCC))
-- \Add0~79\ = CARRY((count(26) & !\Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X27_Y26_N4
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (!\LessThan0~12_combout\ & \Add0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~12_combout\,
	datac => \Add0~78_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X27_Y26_N5
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X28_Y25_N22
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (count(27) & (!\Add0~79\)) # (!count(27) & ((\Add0~79\) # (GND)))
-- \Add0~81\ = CARRY((!\Add0~79\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

-- Location: LCCOMB_X27_Y26_N26
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (!\LessThan0~12_combout\ & \Add0~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~80_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X27_Y26_N27
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X28_Y25_N24
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (count(28) & (\Add0~81\ $ (GND))) # (!count(28) & (!\Add0~81\ & VCC))
-- \Add0~83\ = CARRY((count(28) & !\Add0~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X27_Y26_N16
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (!\LessThan0~12_combout\ & \Add0~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~12_combout\,
	datac => \Add0~82_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X27_Y26_N17
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X28_Y25_N26
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (count(29) & (!\Add0~83\)) # (!count(29) & ((\Add0~83\) # (GND)))
-- \Add0~85\ = CARRY((!\Add0~83\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X27_Y26_N18
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (!\LessThan0~12_combout\ & \Add0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~12_combout\,
	datac => \Add0~84_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X27_Y26_N19
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X28_Y25_N28
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (count(30) & (\Add0~85\ $ (GND))) # (!count(30) & (!\Add0~85\ & VCC))
-- \Add0~87\ = CARRY((count(30) & !\Add0~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X27_Y26_N6
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (!\LessThan0~12_combout\ & \Add0~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~12_combout\,
	datad => \Add0~86_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X27_Y26_N7
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X28_Y25_N30
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = \Add0~87\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~87\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X29_Y26_N8
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~93_combout\ & !\LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~93_combout\,
	datad => \LessThan0~12_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X29_Y26_N9
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X30_Y26_N6
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (count(12) & ((count(10)) # (count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datac => count(12),
	datad => count(11),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X30_Y26_N28
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (count(14)) # ((count(13)) # ((count(15)) # (\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(13),
	datac => count(15),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y26_N4
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (count(16) & (count(17) & (count(20) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => count(20),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X27_Y26_N20
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (count(27)) # ((count(26)) # ((count(29)) # (count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(26),
	datac => count(29),
	datad => count(28),
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X27_Y26_N8
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (count(21)) # ((count(20) & ((count(19)) # (count(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(18),
	datac => count(21),
	datad => count(20),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y26_N16
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (count(24)) # ((count(23)) # ((count(22)) # (count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(23),
	datac => count(22),
	datad => count(25),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X27_Y26_N22
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (count(30)) # ((\LessThan0~10_combout\) # ((\LessThan0~8_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => \LessThan0~10_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X29_Y26_N12
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (count(8)) # ((count(5) & (count(7) & count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(7),
	datac => count(6),
	datad => count(8),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y26_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (count(16) & (count(17) & (count(20) & count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => count(20),
	datad => count(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y26_N22
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (count(3)) # ((count(1)) # ((count(2)) # (!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => count(2),
	datad => count(0),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y26_N2
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (count(7) & (count(4) & (count(6) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(4),
	datac => count(6),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y26_N18
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (count(9) & (\LessThan0~0_combout\ & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => count(9),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y26_N6
\LessThan0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (!count(31) & ((\LessThan0~7_combout\) # ((\LessThan0~11_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~11_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X28_Y28_N2
\beg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \beg[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \beg[0]~feeder_combout\);

-- Location: FF_X28_Y28_N3
\beg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \beg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => beg(0));

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: LCCOMB_X28_Y28_N18
\parity~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \parity~0_combout\ = (\LessThan0~12_combout\ & (((!parity(0))))) # (!\LessThan0~12_combout\ & ((\reset~input_o\) # ((beg(0) & parity(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => beg(0),
	datab => \reset~input_o\,
	datac => parity(0),
	datad => \LessThan0~12_combout\,
	combout => \parity~0_combout\);

-- Location: FF_X28_Y28_N19
\parity[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \parity~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => parity(0));

-- Location: LCCOMB_X28_Y28_N12
\new_clock~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \new_clock~0_combout\ = (\LessThan0~12_combout\ & (parity(0))) # (!\LessThan0~12_combout\ & ((!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => parity(0),
	datac => \reset~input_o\,
	datad => \LessThan0~12_combout\,
	combout => \new_clock~0_combout\);

-- Location: LCCOMB_X28_Y28_N10
\new_clock~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \new_clock~1_combout\ = (\new_clock~0_combout\ & ((\LessThan0~12_combout\) # ((\new_clock~q\) # (!beg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datab => beg(0),
	datac => \new_clock~q\,
	datad => \new_clock~0_combout\,
	combout => \new_clock~1_combout\);

-- Location: LCCOMB_X28_Y28_N4
\new_clock~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \new_clock~feeder_combout\ = \new_clock~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_clock~1_combout\,
	combout => \new_clock~feeder_combout\);

-- Location: FF_X28_Y28_N5
new_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \new_clock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_clock~q\);

-- Location: CLKCTRL_G14
\new_clock~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \new_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \new_clock~clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N1
\sw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw,
	o => \sw~input_o\);

-- Location: LCCOMB_X17_Y7_N28
\led_parity[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_parity[1]~0_combout\ = (led_parity(1)) # ((led_parity(0) & !\sw~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_parity(0),
	datab => \sw~input_o\,
	datac => led_parity(1),
	combout => \led_parity[1]~0_combout\);

-- Location: FF_X17_Y7_N29
\led_parity[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led_parity[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_parity(1));

-- Location: LCCOMB_X20_Y7_N22
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (led_parity(1)) # (!led_parity(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_parity(0),
	datad => led_parity(1),
	combout => \Equal2~0_combout\);

-- Location: FF_X20_Y7_N23
\led_parity[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \Equal2~0_combout\,
	ena => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_parity(0));

-- Location: LCCOMB_X16_Y7_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = n_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(n_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X16_Y7_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (n_counter(1) & (\Add1~1\ & VCC)) # (!n_counter(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!n_counter(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X17_Y6_N8
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!n_counter(24) & (!n_counter(25) & (!n_counter(26) & !n_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(24),
	datab => n_counter(25),
	datac => n_counter(26),
	datad => n_counter(23),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X15_Y6_N12
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!n_counter(14) & (!n_counter(11) & (!n_counter(13) & !n_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(14),
	datab => n_counter(11),
	datac => n_counter(13),
	datad => n_counter(12),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X15_Y6_N24
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!n_counter(20) & (!n_counter(21) & (!n_counter(22) & !n_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(20),
	datab => n_counter(21),
	datac => n_counter(22),
	datad => n_counter(19),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X15_Y6_N14
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!n_counter(15) & (!n_counter(18) & (!n_counter(16) & !n_counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(15),
	datab => n_counter(18),
	datac => n_counter(16),
	datad => n_counter(17),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X15_Y7_N12
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!n_counter(8) & (!n_counter(7) & (!n_counter(10) & !n_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(8),
	datab => n_counter(7),
	datac => n_counter(10),
	datad => n_counter(9),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X15_Y6_N10
\LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~1_combout\ & (\LessThan2~3_combout\ & (\LessThan2~2_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X17_Y6_N0
\LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\LessThan2~5_combout\ & (!n_counter(27) & \LessThan2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~5_combout\,
	datac => n_counter(27),
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X17_Y6_N10
\n_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~3_combout\ = (\n_counter[9]~0_combout\ & (\LessThan2~6_combout\ & ((n_counter(28)) # (n_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(28),
	datab => \n_counter[9]~0_combout\,
	datac => n_counter(6),
	datad => \LessThan2~6_combout\,
	combout => \n_counter~3_combout\);

-- Location: LCCOMB_X17_Y7_N4
\n_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~4_combout\ = (\Add1~2_combout\) # (!\n_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datad => \n_counter~3_combout\,
	combout => \n_counter~4_combout\);

-- Location: FF_X17_Y7_N5
\n_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~4_combout\,
	sclr => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(1));

-- Location: LCCOMB_X16_Y7_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (n_counter(2) & ((GND) # (!\Add1~3\))) # (!n_counter(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((n_counter(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X17_Y7_N26
\n_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~5_combout\ = (\Add1~4_combout\) # (!\n_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \n_counter~3_combout\,
	combout => \n_counter~5_combout\);

-- Location: FF_X17_Y7_N27
\n_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~5_combout\,
	sclr => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(2));

-- Location: LCCOMB_X16_Y7_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (n_counter(3) & (\Add1~5\ & VCC)) # (!n_counter(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!n_counter(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X17_Y7_N20
\n_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~6_combout\ = (\Add1~6_combout\) # (!\n_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \n_counter~3_combout\,
	combout => \n_counter~6_combout\);

-- Location: FF_X17_Y7_N21
\n_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~6_combout\,
	sclr => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(3));

-- Location: LCCOMB_X16_Y7_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (n_counter(4) & ((GND) # (!\Add1~7\))) # (!n_counter(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((n_counter(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X17_Y7_N6
\n_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~7_combout\ = (\Add1~8_combout\) # (!\n_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => \n_counter~3_combout\,
	combout => \n_counter~7_combout\);

-- Location: FF_X17_Y7_N7
\n_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~7_combout\,
	sclr => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(4));

-- Location: LCCOMB_X16_Y7_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (n_counter(5) & (\Add1~9\ & VCC)) # (!n_counter(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!n_counter(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X17_Y7_N0
\n_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~8_combout\ = (\Add1~10_combout\) # (!\n_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => \n_counter~3_combout\,
	combout => \n_counter~8_combout\);

-- Location: FF_X17_Y7_N1
\n_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~8_combout\,
	sclr => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(5));

-- Location: LCCOMB_X16_Y7_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (n_counter(6) & ((GND) # (!\Add1~11\))) # (!n_counter(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((n_counter(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X17_Y7_N22
\n_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~9_combout\ = (\Add1~12_combout\) # (!\n_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => \n_counter~3_combout\,
	combout => \n_counter~9_combout\);

-- Location: FF_X17_Y7_N23
\n_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~9_combout\,
	sclr => \ALT_INV_sw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(6));

-- Location: LCCOMB_X16_Y7_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (n_counter(7) & (\Add1~13\ & VCC)) # (!n_counter(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!n_counter(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X15_Y7_N28
\n_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~10_combout\ = (\Add1~14_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~10_combout\);

-- Location: FF_X15_Y7_N29
\n_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(7));

-- Location: LCCOMB_X16_Y7_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (n_counter(8) & ((GND) # (!\Add1~15\))) # (!n_counter(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((n_counter(8)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X15_Y7_N22
\n_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~11_combout\ = (\Add1~16_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~11_combout\);

-- Location: FF_X15_Y7_N23
\n_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(8));

-- Location: LCCOMB_X16_Y7_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (n_counter(9) & (\Add1~17\ & VCC)) # (!n_counter(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((!n_counter(9) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X15_Y7_N16
\n_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~12_combout\ = (\Add1~18_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~12_combout\);

-- Location: FF_X15_Y7_N17
\n_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(9));

-- Location: LCCOMB_X16_Y7_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (n_counter(10) & ((GND) # (!\Add1~19\))) # (!n_counter(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((n_counter(10)) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X15_Y7_N14
\n_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~13_combout\ = (\Add1~20_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~20_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~13_combout\);

-- Location: FF_X15_Y7_N15
\n_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(10));

-- Location: LCCOMB_X16_Y7_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (n_counter(11) & (\Add1~21\ & VCC)) # (!n_counter(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((!n_counter(11) & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X15_Y6_N20
\n_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~14_combout\ = (\n_counter[9]~1_combout\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_counter[9]~1_combout\,
	datad => \Add1~22_combout\,
	combout => \n_counter~14_combout\);

-- Location: FF_X15_Y6_N21
\n_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(11));

-- Location: LCCOMB_X16_Y7_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (n_counter(12) & ((GND) # (!\Add1~23\))) # (!n_counter(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((n_counter(12)) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X15_Y6_N2
\n_counter~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~15_combout\ = (\Add1~24_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~15_combout\);

-- Location: FF_X15_Y6_N3
\n_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(12));

-- Location: LCCOMB_X16_Y7_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (n_counter(13) & (\Add1~25\ & VCC)) # (!n_counter(13) & (!\Add1~25\))
-- \Add1~27\ = CARRY((!n_counter(13) & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X15_Y6_N8
\n_counter~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~16_combout\ = (\Add1~26_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~16_combout\);

-- Location: FF_X15_Y6_N9
\n_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(13));

-- Location: LCCOMB_X16_Y7_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (n_counter(14) & ((GND) # (!\Add1~27\))) # (!n_counter(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((n_counter(14)) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X15_Y6_N22
\n_counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~17_combout\ = (\Add1~28_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~28_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~17_combout\);

-- Location: FF_X15_Y6_N23
\n_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(14));

-- Location: LCCOMB_X16_Y7_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (n_counter(15) & (\Add1~29\ & VCC)) # (!n_counter(15) & (!\Add1~29\))
-- \Add1~31\ = CARRY((!n_counter(15) & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X15_Y6_N26
\n_counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~18_combout\ = (\n_counter[9]~1_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_counter[9]~1_combout\,
	datad => \Add1~30_combout\,
	combout => \n_counter~18_combout\);

-- Location: FF_X15_Y6_N27
\n_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(15));

-- Location: LCCOMB_X16_Y6_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (n_counter(16) & ((GND) # (!\Add1~31\))) # (!n_counter(16) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((n_counter(16)) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X15_Y6_N4
\n_counter~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~19_combout\ = (\Add1~32_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~32_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~19_combout\);

-- Location: FF_X15_Y6_N5
\n_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(16));

-- Location: LCCOMB_X16_Y6_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (n_counter(17) & (\Add1~33\ & VCC)) # (!n_counter(17) & (!\Add1~33\))
-- \Add1~35\ = CARRY((!n_counter(17) & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X15_Y6_N18
\n_counter~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~20_combout\ = (\n_counter[9]~1_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_counter[9]~1_combout\,
	datad => \Add1~34_combout\,
	combout => \n_counter~20_combout\);

-- Location: FF_X15_Y6_N19
\n_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(17));

-- Location: LCCOMB_X16_Y6_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (n_counter(18) & ((GND) # (!\Add1~35\))) # (!n_counter(18) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((n_counter(18)) # (!\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X15_Y6_N0
\n_counter~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~21_combout\ = (\n_counter[9]~1_combout\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_counter[9]~1_combout\,
	datad => \Add1~36_combout\,
	combout => \n_counter~21_combout\);

-- Location: FF_X15_Y6_N1
\n_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(18));

-- Location: LCCOMB_X16_Y6_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (n_counter(19) & (\Add1~37\ & VCC)) # (!n_counter(19) & (!\Add1~37\))
-- \Add1~39\ = CARRY((!n_counter(19) & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X15_Y6_N16
\n_counter~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~22_combout\ = (\n_counter[9]~1_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_counter[9]~1_combout\,
	datad => \Add1~38_combout\,
	combout => \n_counter~22_combout\);

-- Location: FF_X15_Y6_N17
\n_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(19));

-- Location: LCCOMB_X16_Y6_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (n_counter(20) & ((GND) # (!\Add1~39\))) # (!n_counter(20) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((n_counter(20)) # (!\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X15_Y6_N6
\n_counter~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~23_combout\ = (\Add1~40_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~40_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~23_combout\);

-- Location: FF_X15_Y6_N7
\n_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(20));

-- Location: LCCOMB_X16_Y6_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (n_counter(21) & (\Add1~41\ & VCC)) # (!n_counter(21) & (!\Add1~41\))
-- \Add1~43\ = CARRY((!n_counter(21) & !\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X15_Y6_N28
\n_counter~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~24_combout\ = (\Add1~42_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~42_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~24_combout\);

-- Location: FF_X15_Y6_N29
\n_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(21));

-- Location: LCCOMB_X16_Y6_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (n_counter(22) & ((GND) # (!\Add1~43\))) # (!n_counter(22) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((n_counter(22)) # (!\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X15_Y6_N30
\n_counter~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~25_combout\ = (\Add1~44_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~44_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~25_combout\);

-- Location: FF_X15_Y6_N31
\n_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(22));

-- Location: LCCOMB_X16_Y6_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (n_counter(23) & (\Add1~45\ & VCC)) # (!n_counter(23) & (!\Add1~45\))
-- \Add1~47\ = CARRY((!n_counter(23) & !\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X17_Y6_N20
\n_counter~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~26_combout\ = (\n_counter[9]~1_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n_counter[9]~1_combout\,
	datad => \Add1~46_combout\,
	combout => \n_counter~26_combout\);

-- Location: FF_X17_Y6_N21
\n_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(23));

-- Location: LCCOMB_X16_Y6_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (n_counter(24) & ((GND) # (!\Add1~47\))) # (!n_counter(24) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((n_counter(24)) # (!\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X17_Y6_N6
\n_counter~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~27_combout\ = (\Add1~48_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~48_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~27_combout\);

-- Location: FF_X17_Y6_N7
\n_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(24));

-- Location: LCCOMB_X16_Y6_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (n_counter(25) & (\Add1~49\ & VCC)) # (!n_counter(25) & (!\Add1~49\))
-- \Add1~51\ = CARRY((!n_counter(25) & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X17_Y6_N28
\n_counter~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~28_combout\ = (\n_counter[9]~1_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n_counter[9]~1_combout\,
	datad => \Add1~50_combout\,
	combout => \n_counter~28_combout\);

-- Location: FF_X17_Y6_N29
\n_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(25));

-- Location: LCCOMB_X16_Y6_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (n_counter(26) & ((GND) # (!\Add1~51\))) # (!n_counter(26) & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((n_counter(26)) # (!\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X17_Y6_N14
\n_counter~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~29_combout\ = (\n_counter[9]~1_combout\ & \Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n_counter[9]~1_combout\,
	datad => \Add1~52_combout\,
	combout => \n_counter~29_combout\);

-- Location: FF_X17_Y6_N15
\n_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(26));

-- Location: LCCOMB_X16_Y6_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (n_counter(27) & (\Add1~53\ & VCC)) # (!n_counter(27) & (!\Add1~53\))
-- \Add1~55\ = CARRY((!n_counter(27) & !\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_counter(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X17_Y6_N22
\n_counter~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~30_combout\ = (\n_counter[9]~1_combout\ & \Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n_counter[9]~1_combout\,
	datad => \Add1~54_combout\,
	combout => \n_counter~30_combout\);

-- Location: FF_X17_Y6_N23
\n_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(27));

-- Location: LCCOMB_X16_Y6_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (n_counter(28) & ((GND) # (!\Add1~55\))) # (!n_counter(28) & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((n_counter(28)) # (!\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X17_Y6_N30
\n_counter~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~31_combout\ = (\n_counter[9]~1_combout\ & \Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n_counter[9]~1_combout\,
	datad => \Add1~56_combout\,
	combout => \n_counter~31_combout\);

-- Location: FF_X17_Y6_N31
\n_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(28));

-- Location: LCCOMB_X17_Y6_N12
\n_counter[31]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter[31]~34_combout\ = (\n_counter[9]~0_combout\ & ((n_counter(28)) # (n_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(28),
	datac => n_counter(6),
	datad => \n_counter[9]~0_combout\,
	combout => \n_counter[31]~34_combout\);

-- Location: LCCOMB_X16_Y6_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (n_counter(29) & (\Add1~57\ & VCC)) # (!n_counter(29) & (!\Add1~57\))
-- \Add1~59\ = CARRY((!n_counter(29) & !\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X17_Y6_N4
\n_counter~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~32_combout\ = (\Add1~58_combout\ & \n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~58_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~32_combout\);

-- Location: FF_X17_Y6_N5
\n_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(29));

-- Location: LCCOMB_X16_Y6_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (n_counter(30) & ((GND) # (!\Add1~59\))) # (!n_counter(30) & (\Add1~59\ $ (GND)))
-- \Add1~61\ = CARRY((n_counter(30)) # (!\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X17_Y6_N2
\n_counter~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~33_combout\ = (\n_counter[9]~1_combout\ & \Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n_counter[9]~1_combout\,
	datad => \Add1~60_combout\,
	combout => \n_counter~33_combout\);

-- Location: FF_X17_Y6_N3
\n_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(30));

-- Location: LCCOMB_X16_Y6_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (!n_counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => n_counter(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X17_Y6_N16
\n_counter[31]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter[31]~35_combout\ = (\n_counter[31]~34_combout\ & (\sw~input_o\ & (\LessThan2~6_combout\ & \Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_counter[31]~34_combout\,
	datab => \sw~input_o\,
	datac => \LessThan2~6_combout\,
	datad => \Add1~62_combout\,
	combout => \n_counter[31]~35_combout\);

-- Location: FF_X17_Y6_N17
\n_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(31));

-- Location: LCCOMB_X17_Y6_N18
\n_counter[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter[9]~0_combout\ = (!n_counter(28) & (!n_counter(31) & (!n_counter(29) & !n_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(28),
	datab => n_counter(31),
	datac => n_counter(29),
	datad => n_counter(30),
	combout => \n_counter[9]~0_combout\);

-- Location: LCCOMB_X17_Y6_N24
\n_counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter[9]~1_combout\ = (\sw~input_o\ & (\n_counter[9]~0_combout\ & (n_counter(6) & \LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => \n_counter[9]~0_combout\,
	datac => n_counter(6),
	datad => \LessThan2~6_combout\,
	combout => \n_counter[9]~1_combout\);

-- Location: LCCOMB_X17_Y7_N30
\n_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_counter~2_combout\ = (\Add1~0_combout\) # (!\n_counter[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \n_counter[9]~1_combout\,
	combout => \n_counter~2_combout\);

-- Location: FF_X17_Y7_N31
\n_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \n_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_counter(0));

-- Location: LCCOMB_X17_Y7_N12
\led~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\sw~input_o\ & (((n_counter(0))))) # (!\sw~input_o\ & (!led_parity(0) & ((!led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_parity(0),
	datab => \sw~input_o\,
	datac => n_counter(0),
	datad => led_parity(1),
	combout => \led~0_combout\);

-- Location: FF_X17_Y7_N13
\led[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N18
\led~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (\sw~input_o\ & (((n_counter(1))))) # (!\sw~input_o\ & (!led_parity(0) & ((!led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_parity(0),
	datab => \sw~input_o\,
	datac => n_counter(1),
	datad => led_parity(1),
	combout => \led~1_combout\);

-- Location: FF_X17_Y7_N19
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N16
\led~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~2_combout\ = (\sw~input_o\ & (((n_counter(2))))) # (!\sw~input_o\ & (led_parity(0) & ((!led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_parity(0),
	datab => \sw~input_o\,
	datac => n_counter(2),
	datad => led_parity(1),
	combout => \led~2_combout\);

-- Location: FF_X17_Y7_N17
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N14
\led~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~3_combout\ = (\sw~input_o\ & (n_counter(3))) # (!\sw~input_o\ & (((led_parity(0) & !led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(3),
	datab => \sw~input_o\,
	datac => led_parity(0),
	datad => led_parity(1),
	combout => \led~3_combout\);

-- Location: FF_X17_Y7_N15
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N8
\led~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~4_combout\ = (\sw~input_o\ & (n_counter(4))) # (!\sw~input_o\ & (((!led_parity(0) & led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(4),
	datab => \sw~input_o\,
	datac => led_parity(0),
	datad => led_parity(1),
	combout => \led~4_combout\);

-- Location: FF_X17_Y7_N9
\led[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[4]~reg0_q\);

-- Location: LCCOMB_X20_Y7_N16
\led~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~5_combout\ = (\sw~input_o\ & (n_counter(5))) # (!\sw~input_o\ & (((!led_parity(0) & led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => n_counter(5),
	datac => led_parity(0),
	datad => led_parity(1),
	combout => \led~5_combout\);

-- Location: FF_X20_Y7_N17
\led[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[5]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N10
\led~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~6_combout\ = (\sw~input_o\ & (((n_counter(6))))) # (!\sw~input_o\ & (led_parity(0) & ((led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_parity(0),
	datab => \sw~input_o\,
	datac => n_counter(6),
	datad => led_parity(1),
	combout => \led~6_combout\);

-- Location: FF_X17_Y7_N11
\led[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[6]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N24
\led~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led~7_combout\ = (\sw~input_o\ & (n_counter(7))) # (!\sw~input_o\ & (((led_parity(0) & led_parity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_counter(7),
	datab => \sw~input_o\,
	datac => led_parity(0),
	datad => led_parity(1),
	combout => \led~7_combout\);

-- Location: FF_X17_Y7_N25
\led[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clock~clkctrl_outclk\,
	d => \led~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[7]~reg0_q\);

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

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;
END structure;


