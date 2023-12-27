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

-- DATE "10/20/2023 16:47:31"

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

ENTITY 	traffic IS
    PORT (
	on_switch : IN std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	N : BUFFER std_logic_vector(1 DOWNTO 0);
	E : BUFFER std_logic_vector(1 DOWNTO 0);
	S : BUFFER std_logic_vector(1 DOWNTO 0);
	W : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- on_switch	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_on_switch : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_N : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_E : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_W : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_1|sign~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \on_switch~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \N[0]~output_o\ : std_logic;
SIGNAL \N[1]~output_o\ : std_logic;
SIGNAL \E[0]~output_o\ : std_logic;
SIGNAL \E[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \W[0]~output_o\ : std_logic;
SIGNAL \W[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_1|clock_proc:count[29]~q\ : std_logic;
SIGNAL \clock_1|Add0~0_combout\ : std_logic;
SIGNAL \clock_1|count~12_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[0]~q\ : std_logic;
SIGNAL \clock_1|Add0~1\ : std_logic;
SIGNAL \clock_1|Add0~2_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[1]~q\ : std_logic;
SIGNAL \clock_1|Add0~3\ : std_logic;
SIGNAL \clock_1|Add0~4_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[2]~q\ : std_logic;
SIGNAL \clock_1|Add0~5\ : std_logic;
SIGNAL \clock_1|Add0~6_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[3]~q\ : std_logic;
SIGNAL \clock_1|Add0~7\ : std_logic;
SIGNAL \clock_1|Add0~8_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[4]~q\ : std_logic;
SIGNAL \clock_1|Add0~9\ : std_logic;
SIGNAL \clock_1|Add0~10_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[5]~q\ : std_logic;
SIGNAL \clock_1|Add0~11\ : std_logic;
SIGNAL \clock_1|Add0~12_combout\ : std_logic;
SIGNAL \clock_1|count~11_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[6]~q\ : std_logic;
SIGNAL \clock_1|Add0~13\ : std_logic;
SIGNAL \clock_1|Add0~14_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[7]~q\ : std_logic;
SIGNAL \clock_1|Add0~15\ : std_logic;
SIGNAL \clock_1|Add0~16_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[8]~q\ : std_logic;
SIGNAL \clock_1|Add0~17\ : std_logic;
SIGNAL \clock_1|Add0~18_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[9]~q\ : std_logic;
SIGNAL \clock_1|Add0~19\ : std_logic;
SIGNAL \clock_1|Add0~20_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[10]~q\ : std_logic;
SIGNAL \clock_1|Add0~21\ : std_logic;
SIGNAL \clock_1|Add0~22_combout\ : std_logic;
SIGNAL \clock_1|count~10_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[11]~q\ : std_logic;
SIGNAL \clock_1|Add0~23\ : std_logic;
SIGNAL \clock_1|Add0~24_combout\ : std_logic;
SIGNAL \clock_1|count~9_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[12]~q\ : std_logic;
SIGNAL \clock_1|Add0~25\ : std_logic;
SIGNAL \clock_1|Add0~26_combout\ : std_logic;
SIGNAL \clock_1|count~8_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[13]~q\ : std_logic;
SIGNAL \clock_1|Add0~27\ : std_logic;
SIGNAL \clock_1|Add0~28_combout\ : std_logic;
SIGNAL \clock_1|count~7_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[14]~q\ : std_logic;
SIGNAL \clock_1|Add0~29\ : std_logic;
SIGNAL \clock_1|Add0~30_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[15]~q\ : std_logic;
SIGNAL \clock_1|Add0~31\ : std_logic;
SIGNAL \clock_1|Add0~32_combout\ : std_logic;
SIGNAL \clock_1|count~6_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[16]~q\ : std_logic;
SIGNAL \clock_1|Add0~33\ : std_logic;
SIGNAL \clock_1|Add0~34_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[17]~q\ : std_logic;
SIGNAL \clock_1|Add0~35\ : std_logic;
SIGNAL \clock_1|Add0~36_combout\ : std_logic;
SIGNAL \clock_1|count~5_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[18]~q\ : std_logic;
SIGNAL \clock_1|Add0~37\ : std_logic;
SIGNAL \clock_1|Add0~38_combout\ : std_logic;
SIGNAL \clock_1|count~4_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[19]~q\ : std_logic;
SIGNAL \clock_1|Add0~39\ : std_logic;
SIGNAL \clock_1|Add0~40_combout\ : std_logic;
SIGNAL \clock_1|count~3_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[20]~q\ : std_logic;
SIGNAL \clock_1|Add0~41\ : std_logic;
SIGNAL \clock_1|Add0~42_combout\ : std_logic;
SIGNAL \clock_1|count~2_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[21]~q\ : std_logic;
SIGNAL \clock_1|Add0~43\ : std_logic;
SIGNAL \clock_1|Add0~44_combout\ : std_logic;
SIGNAL \clock_1|count~1_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[22]~q\ : std_logic;
SIGNAL \clock_1|Add0~45\ : std_logic;
SIGNAL \clock_1|Add0~46_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[23]~q\ : std_logic;
SIGNAL \clock_1|Add0~47\ : std_logic;
SIGNAL \clock_1|Add0~48_combout\ : std_logic;
SIGNAL \clock_1|count~0_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[24]~q\ : std_logic;
SIGNAL \clock_1|Add0~49\ : std_logic;
SIGNAL \clock_1|Add0~50_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[25]~q\ : std_logic;
SIGNAL \clock_1|Add0~51\ : std_logic;
SIGNAL \clock_1|Add0~52_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[26]~q\ : std_logic;
SIGNAL \clock_1|Add0~53\ : std_logic;
SIGNAL \clock_1|Add0~54_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[27]~q\ : std_logic;
SIGNAL \clock_1|Add0~55\ : std_logic;
SIGNAL \clock_1|Add0~56_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[28]~q\ : std_logic;
SIGNAL \clock_1|Add0~57\ : std_logic;
SIGNAL \clock_1|Add0~58_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[31]~q\ : std_logic;
SIGNAL \clock_1|Add0~59\ : std_logic;
SIGNAL \clock_1|Add0~60_combout\ : std_logic;
SIGNAL \clock_1|clock_proc:count[30]~q\ : std_logic;
SIGNAL \clock_1|Add0~61\ : std_logic;
SIGNAL \clock_1|Add0~62_combout\ : std_logic;
SIGNAL \clock_1|Equal0~2_combout\ : std_logic;
SIGNAL \clock_1|Equal0~0_combout\ : std_logic;
SIGNAL \clock_1|Equal0~1_combout\ : std_logic;
SIGNAL \clock_1|Equal0~3_combout\ : std_logic;
SIGNAL \clock_1|Equal0~4_combout\ : std_logic;
SIGNAL \clock_1|Equal0~5_combout\ : std_logic;
SIGNAL \clock_1|Equal0~6_combout\ : std_logic;
SIGNAL \clock_1|Equal0~7_combout\ : std_logic;
SIGNAL \clock_1|Equal0~8_combout\ : std_logic;
SIGNAL \clock_1|Equal0~9_combout\ : std_logic;
SIGNAL \clock_1|Equal0~10_combout\ : std_logic;
SIGNAL \clock_1|sign~0_combout\ : std_logic;
SIGNAL \clock_1|sign~feeder_combout\ : std_logic;
SIGNAL \clock_1|sign~q\ : std_logic;
SIGNAL \clock_1|sign~clkctrl_outclk\ : std_logic;
SIGNAL \light_proc:count[2]~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \light_proc:count[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \light_proc:count[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \light_proc:count[29]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \light_proc:count[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \light_proc:count[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \light_proc:count[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \light_proc:count[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \light_proc:count[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \light_proc:count[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \light_proc:count[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \light_proc:count[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \light_proc:count[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \light_proc:count[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \light_proc:count[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \light_proc:count[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \light_proc:count[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \light_proc:count[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \light_proc:count[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \light_proc:count[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \light_proc:count[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \light_proc:count[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \light_proc:count[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \light_proc:count[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \light_proc:count[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \light_proc:count[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \light_proc:count[27]~q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \light_proc:count[28]~q\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \light_proc:count[30]~q\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \light_proc:count[31]~q\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \light_proc:count[4]~q\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \light_proc:count[3]~q\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \N~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \N[1]~1_combout\ : std_logic;
SIGNAL \N[1]~3_combout\ : std_logic;
SIGNAL \N[1]~4_combout\ : std_logic;
SIGNAL \N[0]~reg0_q\ : std_logic;
SIGNAL \N~2_combout\ : std_logic;
SIGNAL \N[1]~reg0_q\ : std_logic;
SIGNAL \E~3_combout\ : std_logic;
SIGNAL \W[0]~0_combout\ : std_logic;
SIGNAL \E[0]~2_combout\ : std_logic;
SIGNAL \E[0]~reg0_q\ : std_logic;
SIGNAL \E[1]~reg0_q\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \S[0]~3_combout\ : std_logic;
SIGNAL \S[0]~reg0_q\ : std_logic;
SIGNAL \S[1]~reg0_q\ : std_logic;
SIGNAL \W~1_combout\ : std_logic;
SIGNAL \W[0]~2_combout\ : std_logic;
SIGNAL \W[0]~3_combout\ : std_logic;
SIGNAL \W[0]~reg0_q\ : std_logic;
SIGNAL \W[1]~reg0_q\ : std_logic;
SIGNAL \clock_1|ALT_INV_sign~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_on_switch <= on_switch;
ww_reset <= reset;
ww_clock <= clock;
N <= ww_N;
E <= ww_E;
S <= ww_S;
W <= ww_W;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\clock_1|sign~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_1|sign~q\);
\clock_1|ALT_INV_sign~clkctrl_outclk\ <= NOT \clock_1|sign~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y29_N20
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
\N[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N[0]~reg0_q\,
	devoe => ww_devoe,
	o => \N[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\N[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N[1]~reg0_q\,
	devoe => ww_devoe,
	o => \N[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\E[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E[0]~reg0_q\,
	devoe => ww_devoe,
	o => \E[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\E[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E[1]~reg0_q\,
	devoe => ww_devoe,
	o => \E[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[0]~reg0_q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]~reg0_q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\W[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[0]~reg0_q\,
	devoe => ww_devoe,
	o => \W[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\W[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[1]~reg0_q\,
	devoe => ww_devoe,
	o => \W[1]~output_o\);

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

-- Location: FF_X47_Y27_N27
\clock_1|clock_proc:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[29]~q\);

-- Location: LCCOMB_X47_Y28_N0
\clock_1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~0_combout\ = \clock_1|clock_proc:count[0]~q\ $ (GND)
-- \clock_1|Add0~1\ = CARRY(!\clock_1|clock_proc:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[0]~q\,
	datad => VCC,
	combout => \clock_1|Add0~0_combout\,
	cout => \clock_1|Add0~1\);

-- Location: LCCOMB_X49_Y28_N8
\clock_1|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~12_combout\ = (!\clock_1|Add0~0_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~0_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~12_combout\);

-- Location: FF_X49_Y28_N9
\clock_1|clock_proc:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[0]~q\);

-- Location: LCCOMB_X47_Y28_N2
\clock_1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~2_combout\ = (\clock_1|clock_proc:count[1]~q\ & (!\clock_1|Add0~1\)) # (!\clock_1|clock_proc:count[1]~q\ & ((\clock_1|Add0~1\) # (GND)))
-- \clock_1|Add0~3\ = CARRY((!\clock_1|Add0~1\) # (!\clock_1|clock_proc:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[1]~q\,
	datad => VCC,
	cin => \clock_1|Add0~1\,
	combout => \clock_1|Add0~2_combout\,
	cout => \clock_1|Add0~3\);

-- Location: FF_X47_Y28_N3
\clock_1|clock_proc:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[1]~q\);

-- Location: LCCOMB_X47_Y28_N4
\clock_1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~4_combout\ = (\clock_1|clock_proc:count[2]~q\ & (\clock_1|Add0~3\ $ (GND))) # (!\clock_1|clock_proc:count[2]~q\ & (!\clock_1|Add0~3\ & VCC))
-- \clock_1|Add0~5\ = CARRY((\clock_1|clock_proc:count[2]~q\ & !\clock_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[2]~q\,
	datad => VCC,
	cin => \clock_1|Add0~3\,
	combout => \clock_1|Add0~4_combout\,
	cout => \clock_1|Add0~5\);

-- Location: FF_X47_Y28_N5
\clock_1|clock_proc:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[2]~q\);

-- Location: LCCOMB_X47_Y28_N6
\clock_1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~6_combout\ = (\clock_1|clock_proc:count[3]~q\ & (!\clock_1|Add0~5\)) # (!\clock_1|clock_proc:count[3]~q\ & ((\clock_1|Add0~5\) # (GND)))
-- \clock_1|Add0~7\ = CARRY((!\clock_1|Add0~5\) # (!\clock_1|clock_proc:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[3]~q\,
	datad => VCC,
	cin => \clock_1|Add0~5\,
	combout => \clock_1|Add0~6_combout\,
	cout => \clock_1|Add0~7\);

-- Location: FF_X47_Y28_N7
\clock_1|clock_proc:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[3]~q\);

-- Location: LCCOMB_X47_Y28_N8
\clock_1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~8_combout\ = (\clock_1|clock_proc:count[4]~q\ & (\clock_1|Add0~7\ $ (GND))) # (!\clock_1|clock_proc:count[4]~q\ & (!\clock_1|Add0~7\ & VCC))
-- \clock_1|Add0~9\ = CARRY((\clock_1|clock_proc:count[4]~q\ & !\clock_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[4]~q\,
	datad => VCC,
	cin => \clock_1|Add0~7\,
	combout => \clock_1|Add0~8_combout\,
	cout => \clock_1|Add0~9\);

-- Location: FF_X47_Y28_N9
\clock_1|clock_proc:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[4]~q\);

-- Location: LCCOMB_X47_Y28_N10
\clock_1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~10_combout\ = (\clock_1|clock_proc:count[5]~q\ & (!\clock_1|Add0~9\)) # (!\clock_1|clock_proc:count[5]~q\ & ((\clock_1|Add0~9\) # (GND)))
-- \clock_1|Add0~11\ = CARRY((!\clock_1|Add0~9\) # (!\clock_1|clock_proc:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[5]~q\,
	datad => VCC,
	cin => \clock_1|Add0~9\,
	combout => \clock_1|Add0~10_combout\,
	cout => \clock_1|Add0~11\);

-- Location: FF_X47_Y28_N11
\clock_1|clock_proc:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[5]~q\);

-- Location: LCCOMB_X47_Y28_N12
\clock_1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~12_combout\ = (\clock_1|clock_proc:count[6]~q\ & (\clock_1|Add0~11\ $ (GND))) # (!\clock_1|clock_proc:count[6]~q\ & (!\clock_1|Add0~11\ & VCC))
-- \clock_1|Add0~13\ = CARRY((\clock_1|clock_proc:count[6]~q\ & !\clock_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[6]~q\,
	datad => VCC,
	cin => \clock_1|Add0~11\,
	combout => \clock_1|Add0~12_combout\,
	cout => \clock_1|Add0~13\);

-- Location: LCCOMB_X48_Y28_N12
\clock_1|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~11_combout\ = (!\clock_1|Equal0~10_combout\ & \clock_1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Equal0~10_combout\,
	datad => \clock_1|Add0~12_combout\,
	combout => \clock_1|count~11_combout\);

-- Location: FF_X48_Y28_N13
\clock_1|clock_proc:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[6]~q\);

-- Location: LCCOMB_X47_Y28_N14
\clock_1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~14_combout\ = (\clock_1|clock_proc:count[7]~q\ & (!\clock_1|Add0~13\)) # (!\clock_1|clock_proc:count[7]~q\ & ((\clock_1|Add0~13\) # (GND)))
-- \clock_1|Add0~15\ = CARRY((!\clock_1|Add0~13\) # (!\clock_1|clock_proc:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[7]~q\,
	datad => VCC,
	cin => \clock_1|Add0~13\,
	combout => \clock_1|Add0~14_combout\,
	cout => \clock_1|Add0~15\);

-- Location: FF_X47_Y28_N15
\clock_1|clock_proc:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[7]~q\);

-- Location: LCCOMB_X47_Y28_N16
\clock_1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~16_combout\ = (\clock_1|clock_proc:count[8]~q\ & (\clock_1|Add0~15\ $ (GND))) # (!\clock_1|clock_proc:count[8]~q\ & (!\clock_1|Add0~15\ & VCC))
-- \clock_1|Add0~17\ = CARRY((\clock_1|clock_proc:count[8]~q\ & !\clock_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[8]~q\,
	datad => VCC,
	cin => \clock_1|Add0~15\,
	combout => \clock_1|Add0~16_combout\,
	cout => \clock_1|Add0~17\);

-- Location: FF_X47_Y28_N17
\clock_1|clock_proc:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[8]~q\);

-- Location: LCCOMB_X47_Y28_N18
\clock_1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~18_combout\ = (\clock_1|clock_proc:count[9]~q\ & (!\clock_1|Add0~17\)) # (!\clock_1|clock_proc:count[9]~q\ & ((\clock_1|Add0~17\) # (GND)))
-- \clock_1|Add0~19\ = CARRY((!\clock_1|Add0~17\) # (!\clock_1|clock_proc:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[9]~q\,
	datad => VCC,
	cin => \clock_1|Add0~17\,
	combout => \clock_1|Add0~18_combout\,
	cout => \clock_1|Add0~19\);

-- Location: FF_X47_Y28_N19
\clock_1|clock_proc:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[9]~q\);

-- Location: LCCOMB_X47_Y28_N20
\clock_1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~20_combout\ = (\clock_1|clock_proc:count[10]~q\ & (\clock_1|Add0~19\ $ (GND))) # (!\clock_1|clock_proc:count[10]~q\ & (!\clock_1|Add0~19\ & VCC))
-- \clock_1|Add0~21\ = CARRY((\clock_1|clock_proc:count[10]~q\ & !\clock_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[10]~q\,
	datad => VCC,
	cin => \clock_1|Add0~19\,
	combout => \clock_1|Add0~20_combout\,
	cout => \clock_1|Add0~21\);

-- Location: FF_X47_Y28_N21
\clock_1|clock_proc:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[10]~q\);

-- Location: LCCOMB_X47_Y28_N22
\clock_1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~22_combout\ = (\clock_1|clock_proc:count[11]~q\ & (!\clock_1|Add0~21\)) # (!\clock_1|clock_proc:count[11]~q\ & ((\clock_1|Add0~21\) # (GND)))
-- \clock_1|Add0~23\ = CARRY((!\clock_1|Add0~21\) # (!\clock_1|clock_proc:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[11]~q\,
	datad => VCC,
	cin => \clock_1|Add0~21\,
	combout => \clock_1|Add0~22_combout\,
	cout => \clock_1|Add0~23\);

-- Location: LCCOMB_X49_Y28_N10
\clock_1|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~10_combout\ = (\clock_1|Add0~22_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~22_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~10_combout\);

-- Location: FF_X49_Y28_N11
\clock_1|clock_proc:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[11]~q\);

-- Location: LCCOMB_X47_Y28_N24
\clock_1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~24_combout\ = (\clock_1|clock_proc:count[12]~q\ & (\clock_1|Add0~23\ $ (GND))) # (!\clock_1|clock_proc:count[12]~q\ & (!\clock_1|Add0~23\ & VCC))
-- \clock_1|Add0~25\ = CARRY((\clock_1|clock_proc:count[12]~q\ & !\clock_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[12]~q\,
	datad => VCC,
	cin => \clock_1|Add0~23\,
	combout => \clock_1|Add0~24_combout\,
	cout => \clock_1|Add0~25\);

-- Location: LCCOMB_X49_Y28_N18
\clock_1|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~9_combout\ = (\clock_1|Add0~24_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~24_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~9_combout\);

-- Location: FF_X49_Y28_N19
\clock_1|clock_proc:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[12]~q\);

-- Location: LCCOMB_X47_Y28_N26
\clock_1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~26_combout\ = (\clock_1|clock_proc:count[13]~q\ & (!\clock_1|Add0~25\)) # (!\clock_1|clock_proc:count[13]~q\ & ((\clock_1|Add0~25\) # (GND)))
-- \clock_1|Add0~27\ = CARRY((!\clock_1|Add0~25\) # (!\clock_1|clock_proc:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[13]~q\,
	datad => VCC,
	cin => \clock_1|Add0~25\,
	combout => \clock_1|Add0~26_combout\,
	cout => \clock_1|Add0~27\);

-- Location: LCCOMB_X49_Y28_N28
\clock_1|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~8_combout\ = (\clock_1|Add0~26_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~26_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~8_combout\);

-- Location: FF_X49_Y28_N29
\clock_1|clock_proc:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[13]~q\);

-- Location: LCCOMB_X47_Y28_N28
\clock_1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~28_combout\ = (\clock_1|clock_proc:count[14]~q\ & (\clock_1|Add0~27\ $ (GND))) # (!\clock_1|clock_proc:count[14]~q\ & (!\clock_1|Add0~27\ & VCC))
-- \clock_1|Add0~29\ = CARRY((\clock_1|clock_proc:count[14]~q\ & !\clock_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[14]~q\,
	datad => VCC,
	cin => \clock_1|Add0~27\,
	combout => \clock_1|Add0~28_combout\,
	cout => \clock_1|Add0~29\);

-- Location: LCCOMB_X49_Y28_N6
\clock_1|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~7_combout\ = (\clock_1|Add0~28_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~28_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~7_combout\);

-- Location: FF_X49_Y28_N7
\clock_1|clock_proc:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[14]~q\);

-- Location: LCCOMB_X47_Y28_N30
\clock_1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~30_combout\ = (\clock_1|clock_proc:count[15]~q\ & (!\clock_1|Add0~29\)) # (!\clock_1|clock_proc:count[15]~q\ & ((\clock_1|Add0~29\) # (GND)))
-- \clock_1|Add0~31\ = CARRY((!\clock_1|Add0~29\) # (!\clock_1|clock_proc:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[15]~q\,
	datad => VCC,
	cin => \clock_1|Add0~29\,
	combout => \clock_1|Add0~30_combout\,
	cout => \clock_1|Add0~31\);

-- Location: FF_X47_Y28_N31
\clock_1|clock_proc:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[15]~q\);

-- Location: LCCOMB_X47_Y27_N0
\clock_1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~32_combout\ = (\clock_1|clock_proc:count[16]~q\ & (\clock_1|Add0~31\ $ (GND))) # (!\clock_1|clock_proc:count[16]~q\ & (!\clock_1|Add0~31\ & VCC))
-- \clock_1|Add0~33\ = CARRY((\clock_1|clock_proc:count[16]~q\ & !\clock_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[16]~q\,
	datad => VCC,
	cin => \clock_1|Add0~31\,
	combout => \clock_1|Add0~32_combout\,
	cout => \clock_1|Add0~33\);

-- Location: LCCOMB_X48_Y28_N2
\clock_1|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~6_combout\ = (\clock_1|Add0~32_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Add0~32_combout\,
	datac => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~6_combout\);

-- Location: FF_X48_Y28_N3
\clock_1|clock_proc:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[16]~q\);

-- Location: LCCOMB_X47_Y27_N2
\clock_1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~34_combout\ = (\clock_1|clock_proc:count[17]~q\ & (!\clock_1|Add0~33\)) # (!\clock_1|clock_proc:count[17]~q\ & ((\clock_1|Add0~33\) # (GND)))
-- \clock_1|Add0~35\ = CARRY((!\clock_1|Add0~33\) # (!\clock_1|clock_proc:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[17]~q\,
	datad => VCC,
	cin => \clock_1|Add0~33\,
	combout => \clock_1|Add0~34_combout\,
	cout => \clock_1|Add0~35\);

-- Location: FF_X47_Y27_N3
\clock_1|clock_proc:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[17]~q\);

-- Location: LCCOMB_X47_Y27_N4
\clock_1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~36_combout\ = (\clock_1|clock_proc:count[18]~q\ & (\clock_1|Add0~35\ $ (GND))) # (!\clock_1|clock_proc:count[18]~q\ & (!\clock_1|Add0~35\ & VCC))
-- \clock_1|Add0~37\ = CARRY((\clock_1|clock_proc:count[18]~q\ & !\clock_1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[18]~q\,
	datad => VCC,
	cin => \clock_1|Add0~35\,
	combout => \clock_1|Add0~36_combout\,
	cout => \clock_1|Add0~37\);

-- Location: LCCOMB_X48_Y28_N8
\clock_1|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~5_combout\ = (\clock_1|Add0~36_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Add0~36_combout\,
	datac => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~5_combout\);

-- Location: FF_X48_Y28_N9
\clock_1|clock_proc:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[18]~q\);

-- Location: LCCOMB_X47_Y27_N6
\clock_1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~38_combout\ = (\clock_1|clock_proc:count[19]~q\ & (!\clock_1|Add0~37\)) # (!\clock_1|clock_proc:count[19]~q\ & ((\clock_1|Add0~37\) # (GND)))
-- \clock_1|Add0~39\ = CARRY((!\clock_1|Add0~37\) # (!\clock_1|clock_proc:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[19]~q\,
	datad => VCC,
	cin => \clock_1|Add0~37\,
	combout => \clock_1|Add0~38_combout\,
	cout => \clock_1|Add0~39\);

-- Location: LCCOMB_X48_Y28_N22
\clock_1|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~4_combout\ = (\clock_1|Add0~38_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~38_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~4_combout\);

-- Location: FF_X48_Y28_N23
\clock_1|clock_proc:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[19]~q\);

-- Location: LCCOMB_X47_Y27_N8
\clock_1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~40_combout\ = (\clock_1|clock_proc:count[20]~q\ & (\clock_1|Add0~39\ $ (GND))) # (!\clock_1|clock_proc:count[20]~q\ & (!\clock_1|Add0~39\ & VCC))
-- \clock_1|Add0~41\ = CARRY((\clock_1|clock_proc:count[20]~q\ & !\clock_1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[20]~q\,
	datad => VCC,
	cin => \clock_1|Add0~39\,
	combout => \clock_1|Add0~40_combout\,
	cout => \clock_1|Add0~41\);

-- Location: LCCOMB_X48_Y28_N0
\clock_1|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~3_combout\ = (\clock_1|Add0~40_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Add0~40_combout\,
	datac => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~3_combout\);

-- Location: FF_X48_Y28_N1
\clock_1|clock_proc:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[20]~q\);

-- Location: LCCOMB_X47_Y27_N10
\clock_1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~42_combout\ = (\clock_1|clock_proc:count[21]~q\ & (!\clock_1|Add0~41\)) # (!\clock_1|clock_proc:count[21]~q\ & ((\clock_1|Add0~41\) # (GND)))
-- \clock_1|Add0~43\ = CARRY((!\clock_1|Add0~41\) # (!\clock_1|clock_proc:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[21]~q\,
	datad => VCC,
	cin => \clock_1|Add0~41\,
	combout => \clock_1|Add0~42_combout\,
	cout => \clock_1|Add0~43\);

-- Location: LCCOMB_X48_Y28_N10
\clock_1|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~2_combout\ = (\clock_1|Add0~42_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Add0~42_combout\,
	datac => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~2_combout\);

-- Location: FF_X48_Y28_N11
\clock_1|clock_proc:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[21]~q\);

-- Location: LCCOMB_X47_Y27_N12
\clock_1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~44_combout\ = (\clock_1|clock_proc:count[22]~q\ & (\clock_1|Add0~43\ $ (GND))) # (!\clock_1|clock_proc:count[22]~q\ & (!\clock_1|Add0~43\ & VCC))
-- \clock_1|Add0~45\ = CARRY((\clock_1|clock_proc:count[22]~q\ & !\clock_1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[22]~q\,
	datad => VCC,
	cin => \clock_1|Add0~43\,
	combout => \clock_1|Add0~44_combout\,
	cout => \clock_1|Add0~45\);

-- Location: LCCOMB_X48_Y28_N24
\clock_1|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~1_combout\ = (!\clock_1|Equal0~10_combout\ & \clock_1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Equal0~10_combout\,
	datad => \clock_1|Add0~44_combout\,
	combout => \clock_1|count~1_combout\);

-- Location: FF_X48_Y28_N25
\clock_1|clock_proc:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[22]~q\);

-- Location: LCCOMB_X47_Y27_N14
\clock_1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~46_combout\ = (\clock_1|clock_proc:count[23]~q\ & (!\clock_1|Add0~45\)) # (!\clock_1|clock_proc:count[23]~q\ & ((\clock_1|Add0~45\) # (GND)))
-- \clock_1|Add0~47\ = CARRY((!\clock_1|Add0~45\) # (!\clock_1|clock_proc:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[23]~q\,
	datad => VCC,
	cin => \clock_1|Add0~45\,
	combout => \clock_1|Add0~46_combout\,
	cout => \clock_1|Add0~47\);

-- Location: FF_X47_Y27_N15
\clock_1|clock_proc:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[23]~q\);

-- Location: LCCOMB_X47_Y27_N16
\clock_1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~48_combout\ = (\clock_1|clock_proc:count[24]~q\ & (\clock_1|Add0~47\ $ (GND))) # (!\clock_1|clock_proc:count[24]~q\ & (!\clock_1|Add0~47\ & VCC))
-- \clock_1|Add0~49\ = CARRY((\clock_1|clock_proc:count[24]~q\ & !\clock_1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[24]~q\,
	datad => VCC,
	cin => \clock_1|Add0~47\,
	combout => \clock_1|Add0~48_combout\,
	cout => \clock_1|Add0~49\);

-- Location: LCCOMB_X49_Y28_N30
\clock_1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count~0_combout\ = (\clock_1|Add0~48_combout\ & !\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~48_combout\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|count~0_combout\);

-- Location: FF_X49_Y28_N31
\clock_1|clock_proc:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[24]~q\);

-- Location: LCCOMB_X47_Y27_N18
\clock_1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~50_combout\ = (\clock_1|clock_proc:count[25]~q\ & (!\clock_1|Add0~49\)) # (!\clock_1|clock_proc:count[25]~q\ & ((\clock_1|Add0~49\) # (GND)))
-- \clock_1|Add0~51\ = CARRY((!\clock_1|Add0~49\) # (!\clock_1|clock_proc:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[25]~q\,
	datad => VCC,
	cin => \clock_1|Add0~49\,
	combout => \clock_1|Add0~50_combout\,
	cout => \clock_1|Add0~51\);

-- Location: FF_X47_Y27_N19
\clock_1|clock_proc:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[25]~q\);

-- Location: LCCOMB_X47_Y27_N20
\clock_1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~52_combout\ = (\clock_1|clock_proc:count[26]~q\ & (\clock_1|Add0~51\ $ (GND))) # (!\clock_1|clock_proc:count[26]~q\ & (!\clock_1|Add0~51\ & VCC))
-- \clock_1|Add0~53\ = CARRY((\clock_1|clock_proc:count[26]~q\ & !\clock_1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[26]~q\,
	datad => VCC,
	cin => \clock_1|Add0~51\,
	combout => \clock_1|Add0~52_combout\,
	cout => \clock_1|Add0~53\);

-- Location: FF_X47_Y27_N21
\clock_1|clock_proc:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[26]~q\);

-- Location: LCCOMB_X47_Y27_N22
\clock_1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~54_combout\ = (\clock_1|clock_proc:count[27]~q\ & (!\clock_1|Add0~53\)) # (!\clock_1|clock_proc:count[27]~q\ & ((\clock_1|Add0~53\) # (GND)))
-- \clock_1|Add0~55\ = CARRY((!\clock_1|Add0~53\) # (!\clock_1|clock_proc:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[27]~q\,
	datad => VCC,
	cin => \clock_1|Add0~53\,
	combout => \clock_1|Add0~54_combout\,
	cout => \clock_1|Add0~55\);

-- Location: FF_X47_Y27_N23
\clock_1|clock_proc:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[27]~q\);

-- Location: LCCOMB_X47_Y27_N24
\clock_1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~56_combout\ = (\clock_1|clock_proc:count[28]~q\ & (\clock_1|Add0~55\ $ (GND))) # (!\clock_1|clock_proc:count[28]~q\ & (!\clock_1|Add0~55\ & VCC))
-- \clock_1|Add0~57\ = CARRY((\clock_1|clock_proc:count[28]~q\ & !\clock_1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[28]~q\,
	datad => VCC,
	cin => \clock_1|Add0~55\,
	combout => \clock_1|Add0~56_combout\,
	cout => \clock_1|Add0~57\);

-- Location: FF_X47_Y27_N25
\clock_1|clock_proc:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[28]~q\);

-- Location: LCCOMB_X47_Y27_N26
\clock_1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~58_combout\ = (\clock_1|clock_proc:count[29]~q\ & (!\clock_1|Add0~57\)) # (!\clock_1|clock_proc:count[29]~q\ & ((\clock_1|Add0~57\) # (GND)))
-- \clock_1|Add0~59\ = CARRY((!\clock_1|Add0~57\) # (!\clock_1|clock_proc:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[29]~q\,
	datad => VCC,
	cin => \clock_1|Add0~57\,
	combout => \clock_1|Add0~58_combout\,
	cout => \clock_1|Add0~59\);

-- Location: FF_X47_Y27_N31
\clock_1|clock_proc:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[31]~q\);

-- Location: LCCOMB_X47_Y27_N28
\clock_1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~60_combout\ = (\clock_1|clock_proc:count[30]~q\ & (\clock_1|Add0~59\ $ (GND))) # (!\clock_1|clock_proc:count[30]~q\ & (!\clock_1|Add0~59\ & VCC))
-- \clock_1|Add0~61\ = CARRY((\clock_1|clock_proc:count[30]~q\ & !\clock_1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|clock_proc:count[30]~q\,
	datad => VCC,
	cin => \clock_1|Add0~59\,
	combout => \clock_1|Add0~60_combout\,
	cout => \clock_1|Add0~61\);

-- Location: FF_X47_Y27_N29
\clock_1|clock_proc:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|clock_proc:count[30]~q\);

-- Location: LCCOMB_X47_Y27_N30
\clock_1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Add0~62_combout\ = \clock_1|clock_proc:count[31]~q\ $ (\clock_1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|clock_proc:count[31]~q\,
	cin => \clock_1|Add0~61\,
	combout => \clock_1|Add0~62_combout\);

-- Location: LCCOMB_X48_Y28_N26
\clock_1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~2_combout\ = (!\clock_1|Add0~16_combout\ & (\clock_1|Add0~22_combout\ & (!\clock_1|Add0~18_combout\ & !\clock_1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~16_combout\,
	datab => \clock_1|Add0~22_combout\,
	datac => \clock_1|Add0~18_combout\,
	datad => \clock_1|Add0~20_combout\,
	combout => \clock_1|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y28_N20
\clock_1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~0_combout\ = (!\clock_1|Add0~2_combout\ & (!\clock_1|Add0~0_combout\ & (!\clock_1|Add0~4_combout\ & !\clock_1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~2_combout\,
	datab => \clock_1|Add0~0_combout\,
	datac => \clock_1|Add0~4_combout\,
	datad => \clock_1|Add0~6_combout\,
	combout => \clock_1|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y28_N22
\clock_1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~1_combout\ = (!\clock_1|Add0~8_combout\ & (!\clock_1|Add0~10_combout\ & (!\clock_1|Add0~14_combout\ & \clock_1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~8_combout\,
	datab => \clock_1|Add0~10_combout\,
	datac => \clock_1|Add0~14_combout\,
	datad => \clock_1|Add0~12_combout\,
	combout => \clock_1|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y28_N28
\clock_1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~3_combout\ = (\clock_1|Add0~26_combout\ & (!\clock_1|Add0~30_combout\ & (\clock_1|Add0~24_combout\ & \clock_1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~26_combout\,
	datab => \clock_1|Add0~30_combout\,
	datac => \clock_1|Add0~24_combout\,
	datad => \clock_1|Add0~28_combout\,
	combout => \clock_1|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y28_N30
\clock_1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~4_combout\ = (\clock_1|Equal0~2_combout\ & (\clock_1|Equal0~0_combout\ & (\clock_1|Equal0~1_combout\ & \clock_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~2_combout\,
	datab => \clock_1|Equal0~0_combout\,
	datac => \clock_1|Equal0~1_combout\,
	datad => \clock_1|Equal0~3_combout\,
	combout => \clock_1|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y28_N4
\clock_1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~5_combout\ = (\clock_1|Add0~38_combout\ & (\clock_1|Add0~32_combout\ & (\clock_1|Add0~36_combout\ & !\clock_1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~38_combout\,
	datab => \clock_1|Add0~32_combout\,
	datac => \clock_1|Add0~36_combout\,
	datad => \clock_1|Add0~34_combout\,
	combout => \clock_1|Equal0~5_combout\);

-- Location: LCCOMB_X48_Y28_N18
\clock_1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~6_combout\ = (\clock_1|Add0~40_combout\ & (\clock_1|Add0~42_combout\ & (!\clock_1|Add0~46_combout\ & \clock_1|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~40_combout\,
	datab => \clock_1|Add0~42_combout\,
	datac => \clock_1|Add0~46_combout\,
	datad => \clock_1|Add0~44_combout\,
	combout => \clock_1|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y28_N16
\clock_1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~7_combout\ = (\clock_1|Equal0~4_combout\ & (\clock_1|Add0~48_combout\ & (\clock_1|Equal0~5_combout\ & \clock_1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~4_combout\,
	datab => \clock_1|Add0~48_combout\,
	datac => \clock_1|Equal0~5_combout\,
	datad => \clock_1|Equal0~6_combout\,
	combout => \clock_1|Equal0~7_combout\);

-- Location: LCCOMB_X48_Y28_N6
\clock_1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~8_combout\ = (!\clock_1|Add0~52_combout\ & (!\clock_1|Add0~50_combout\ & (!\clock_1|Add0~54_combout\ & \clock_1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~52_combout\,
	datab => \clock_1|Add0~50_combout\,
	datac => \clock_1|Add0~54_combout\,
	datad => \clock_1|Equal0~7_combout\,
	combout => \clock_1|Equal0~8_combout\);

-- Location: LCCOMB_X48_Y28_N20
\clock_1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~9_combout\ = (!\clock_1|Add0~56_combout\ & \clock_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|Add0~56_combout\,
	datad => \clock_1|Equal0~8_combout\,
	combout => \clock_1|Equal0~9_combout\);

-- Location: LCCOMB_X48_Y28_N14
\clock_1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~10_combout\ = (!\clock_1|Add0~58_combout\ & (!\clock_1|Add0~62_combout\ & (!\clock_1|Add0~60_combout\ & \clock_1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Add0~58_combout\,
	datab => \clock_1|Add0~62_combout\,
	datac => \clock_1|Add0~60_combout\,
	datad => \clock_1|Equal0~9_combout\,
	combout => \clock_1|Equal0~10_combout\);

-- Location: LCCOMB_X49_Y28_N22
\clock_1|sign~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|sign~0_combout\ = \clock_1|sign~q\ $ (\clock_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|sign~q\,
	datad => \clock_1|Equal0~10_combout\,
	combout => \clock_1|sign~0_combout\);

-- Location: LCCOMB_X49_Y28_N12
\clock_1|sign~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|sign~feeder_combout\ = \clock_1|sign~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|sign~0_combout\,
	combout => \clock_1|sign~feeder_combout\);

-- Location: FF_X49_Y28_N13
\clock_1|sign\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1|sign~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|sign~q\);

-- Location: CLKCTRL_G8
\clock_1|sign~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_1|sign~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_1|sign~clkctrl_outclk\);

-- Location: FF_X9_Y4_N5
\light_proc:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[2]~q\);

-- Location: IOIBUF_X3_Y0_N1
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

-- Location: LCCOMB_X9_Y4_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\reset~input_o\ & (\light_proc:count[0]~q\ & VCC)) # (!\reset~input_o\ & (\light_proc:count[0]~q\ $ (VCC)))
-- \Add0~1\ = CARRY((!\reset~input_o\ & \light_proc:count[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \light_proc:count[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X9_Y4_N1
\light_proc:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[0]~q\);

-- Location: LCCOMB_X9_Y4_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\light_proc:count[1]~q\ & (!\Add0~1\)) # (!\light_proc:count[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\light_proc:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X9_Y4_N3
\light_proc:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[1]~q\);

-- Location: LCCOMB_X9_Y4_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\light_proc:count[2]~q\ & (\Add0~3\ $ (GND))) # (!\light_proc:count[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\light_proc:count[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X10_Y4_N22
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!\Add0~0_combout\ & (!\Add0~2_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal3~2_combout\);

-- Location: FF_X9_Y3_N27
\light_proc:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[29]~q\);

-- Location: LCCOMB_X9_Y4_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\light_proc:count[3]~q\ & (!\Add0~5\)) # (!\light_proc:count[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\light_proc:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y4_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\light_proc:count[4]~q\ & (\Add0~7\ $ (GND))) # (!\light_proc:count[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\light_proc:count[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y4_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\light_proc:count[5]~q\ & (!\Add0~9\)) # (!\light_proc:count[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\light_proc:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X9_Y4_N11
\light_proc:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[5]~q\);

-- Location: LCCOMB_X9_Y4_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\light_proc:count[6]~q\ & (\Add0~11\ $ (GND))) # (!\light_proc:count[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\light_proc:count[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X9_Y4_N13
\light_proc:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[6]~q\);

-- Location: LCCOMB_X9_Y4_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\light_proc:count[7]~q\ & (!\Add0~13\)) # (!\light_proc:count[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\light_proc:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X9_Y4_N15
\light_proc:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[7]~q\);

-- Location: LCCOMB_X9_Y4_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\light_proc:count[8]~q\ & (\Add0~15\ $ (GND))) # (!\light_proc:count[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\light_proc:count[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X9_Y4_N17
\light_proc:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[8]~q\);

-- Location: LCCOMB_X9_Y4_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\light_proc:count[9]~q\ & (!\Add0~17\)) # (!\light_proc:count[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\light_proc:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X9_Y4_N19
\light_proc:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[9]~q\);

-- Location: LCCOMB_X9_Y4_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\light_proc:count[10]~q\ & (\Add0~19\ $ (GND))) # (!\light_proc:count[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\light_proc:count[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X9_Y4_N21
\light_proc:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[10]~q\);

-- Location: LCCOMB_X9_Y4_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\light_proc:count[11]~q\ & (!\Add0~21\)) # (!\light_proc:count[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\light_proc:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X9_Y4_N23
\light_proc:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[11]~q\);

-- Location: LCCOMB_X9_Y4_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\light_proc:count[12]~q\ & (\Add0~23\ $ (GND))) # (!\light_proc:count[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\light_proc:count[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X9_Y4_N25
\light_proc:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[12]~q\);

-- Location: LCCOMB_X9_Y4_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\light_proc:count[13]~q\ & (!\Add0~25\)) # (!\light_proc:count[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\light_proc:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X9_Y4_N27
\light_proc:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[13]~q\);

-- Location: LCCOMB_X9_Y4_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\light_proc:count[14]~q\ & (\Add0~27\ $ (GND))) # (!\light_proc:count[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\light_proc:count[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X9_Y4_N29
\light_proc:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[14]~q\);

-- Location: LCCOMB_X9_Y4_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\light_proc:count[15]~q\ & (!\Add0~29\)) # (!\light_proc:count[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\light_proc:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X9_Y4_N31
\light_proc:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[15]~q\);

-- Location: LCCOMB_X9_Y3_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\light_proc:count[16]~q\ & (\Add0~31\ $ (GND))) # (!\light_proc:count[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\light_proc:count[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X9_Y3_N1
\light_proc:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[16]~q\);

-- Location: LCCOMB_X9_Y3_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\light_proc:count[17]~q\ & (!\Add0~33\)) # (!\light_proc:count[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\light_proc:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X9_Y3_N3
\light_proc:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[17]~q\);

-- Location: LCCOMB_X9_Y3_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\light_proc:count[18]~q\ & (\Add0~35\ $ (GND))) # (!\light_proc:count[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\light_proc:count[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X9_Y3_N5
\light_proc:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[18]~q\);

-- Location: LCCOMB_X9_Y3_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\light_proc:count[19]~q\ & (!\Add0~37\)) # (!\light_proc:count[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\light_proc:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X9_Y3_N7
\light_proc:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[19]~q\);

-- Location: LCCOMB_X9_Y3_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\light_proc:count[20]~q\ & (\Add0~39\ $ (GND))) # (!\light_proc:count[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\light_proc:count[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X9_Y3_N9
\light_proc:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[20]~q\);

-- Location: LCCOMB_X9_Y3_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\light_proc:count[21]~q\ & (!\Add0~41\)) # (!\light_proc:count[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\light_proc:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X9_Y3_N11
\light_proc:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[21]~q\);

-- Location: LCCOMB_X9_Y3_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\light_proc:count[22]~q\ & (\Add0~43\ $ (GND))) # (!\light_proc:count[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\light_proc:count[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X9_Y3_N13
\light_proc:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[22]~q\);

-- Location: LCCOMB_X9_Y3_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\light_proc:count[23]~q\ & (!\Add0~45\)) # (!\light_proc:count[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\light_proc:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X9_Y3_N15
\light_proc:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[23]~q\);

-- Location: LCCOMB_X9_Y3_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\light_proc:count[24]~q\ & (\Add0~47\ $ (GND))) # (!\light_proc:count[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\light_proc:count[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X9_Y3_N17
\light_proc:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[24]~q\);

-- Location: LCCOMB_X9_Y3_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\light_proc:count[25]~q\ & (!\Add0~49\)) # (!\light_proc:count[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\light_proc:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X9_Y3_N19
\light_proc:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[25]~q\);

-- Location: LCCOMB_X9_Y3_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\light_proc:count[26]~q\ & (\Add0~51\ $ (GND))) # (!\light_proc:count[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\light_proc:count[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X9_Y3_N21
\light_proc:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[26]~q\);

-- Location: LCCOMB_X9_Y3_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\light_proc:count[27]~q\ & (!\Add0~53\)) # (!\light_proc:count[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\light_proc:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X9_Y3_N23
\light_proc:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[27]~q\);

-- Location: LCCOMB_X9_Y3_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\light_proc:count[28]~q\ & (\Add0~55\ $ (GND))) # (!\light_proc:count[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\light_proc:count[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X9_Y3_N25
\light_proc:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[28]~q\);

-- Location: LCCOMB_X9_Y3_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\light_proc:count[29]~q\ & (!\Add0~57\)) # (!\light_proc:count[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\light_proc:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X9_Y3_N29
\light_proc:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[30]~q\);

-- Location: LCCOMB_X9_Y3_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\light_proc:count[30]~q\ & (\Add0~59\ $ (GND))) # (!\light_proc:count[30]~q\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\light_proc:count[30]~q\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_proc:count[30]~q\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X9_Y3_N31
\light_proc:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[31]~q\);

-- Location: LCCOMB_X9_Y3_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \light_proc:count[31]~q\ $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_proc:count[31]~q\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X10_Y4_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~22_combout\ & (!\Add0~18_combout\ & (!\Add0~20_combout\ & !\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y4_N8
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~12_combout\ & (!\Add0~16_combout\ & (!\Add0~10_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y4_N4
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~26_combout\ & (!\Add0~30_combout\ & (!\Add0~28_combout\ & !\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~32_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y4_N18
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Add0~36_combout\ & (!\Add0~34_combout\ & (!\Add0~38_combout\ & !\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~34_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~40_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X10_Y4_N0
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X10_Y4_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~46_combout\ & (!\Add0~44_combout\ & (!\Add0~48_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~44_combout\,
	datac => \Add0~48_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X10_Y4_N16
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~42_combout\ & (!\Add0~52_combout\ & (!\Add0~50_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~52_combout\,
	datac => \Add0~50_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X10_Y4_N6
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~54_combout\ & (!\Add0~56_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datac => \Add0~56_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X10_Y4_N24
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Add0~58_combout\ & (!\Add0~60_combout\ & (!\Add0~62_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~62_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X10_Y4_N12
\count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~8_combout\ & (((\Add0~4_combout\) # (!\Equal0~9_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~3_combout\);

-- Location: FF_X9_Y4_N9
\light_proc:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	asdata => \count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[4]~q\);

-- Location: LCCOMB_X10_Y4_N20
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\Add0~4_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \Add0~8_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X10_Y4_N10
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~6_combout\ & (((!\Equal0~9_combout\) # (!\Equal3~2_combout\)) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal3~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~2_combout\);

-- Location: FF_X9_Y4_N7
\light_proc:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	asdata => \count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_proc:count[3]~q\);

-- Location: LCCOMB_X11_Y4_N24
\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\Add0~2_combout\ & (\Add0~8_combout\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~8_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X11_Y4_N2
\Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!\Add0~6_combout\ & (\Equal6~2_combout\ & (\Add0~0_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Equal6~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X10_Y4_N30
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Add0~0_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X11_Y4_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~8_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y4_N6
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\Add0~2_combout\ & (\Equal0~10_combout\ & (\Equal0~0_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X11_Y4_N16
\N~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N~0_combout\ = (!\Equal6~3_combout\ & !\Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~3_combout\,
	datad => \Equal0~11_combout\,
	combout => \N~0_combout\);

-- Location: LCCOMB_X11_Y4_N18
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add0~0_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X12_Y4_N30
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (((!\Equal0~9_combout\) # (!\Equal0~0_combout\)) # (!\Equal1~0_combout\)) # (!\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X11_Y4_N28
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!\Add0~4_combout\ & (\Equal3~2_combout\ & (\Add0~8_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Equal3~2_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X11_Y4_N10
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (((\Add0~8_combout\) # (!\Equal0~9_combout\)) # (!\Equal3~2_combout\)) # (!\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Equal3~2_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X10_Y4_N28
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal0~10_combout\ & (\Equal4~0_combout\ & (!\Add0~2_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal4~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X11_Y4_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Add0~6_combout\ & (\Add0~0_combout\ & (!\Add0~8_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X11_Y4_N22
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Add0~2_combout\ & (\Equal2~0_combout\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X12_Y4_N22
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (((!\Equal0~9_combout\) # (!\Equal4~0_combout\)) # (!\Equal1~0_combout\)) # (!\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X11_Y4_N20
\N[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N[1]~1_combout\ = (\Equal3~3_combout\ & (!\Equal4~1_combout\ & (!\Equal2~1_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal4~1_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \N[1]~1_combout\);

-- Location: LCCOMB_X11_Y4_N12
\N[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N[1]~3_combout\ = ((\N[1]~1_combout\ & ((\Equal7~2_combout\) # (\Equal6~3_combout\)))) # (!\Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal6~3_combout\,
	datac => \Equal1~1_combout\,
	datad => \N[1]~1_combout\,
	combout => \N[1]~3_combout\);

-- Location: LCCOMB_X11_Y4_N26
\N[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N[1]~4_combout\ = (\N[1]~3_combout\) # ((\Equal1~1_combout\ & ((\Equal0~11_combout\) # (\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \reset~input_o\,
	datac => \Equal1~1_combout\,
	datad => \N[1]~3_combout\,
	combout => \N[1]~4_combout\);

-- Location: FF_X11_Y4_N17
\N[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \N~0_combout\,
	ena => \N[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N[0]~reg0_q\);

-- Location: LCCOMB_X11_Y4_N30
\N~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N~2_combout\ = (\Equal0~11_combout\) # ((\Equal6~3_combout\) # (!\Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal6~3_combout\,
	combout => \N~2_combout\);

-- Location: FF_X11_Y4_N31
\N[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \N~2_combout\,
	ena => \N[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N[1]~reg0_q\);

-- Location: LCCOMB_X12_Y4_N24
\E~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E~3_combout\ = (!\Equal0~11_combout\ & (((!\Equal0~9_combout\) # (!\Add0~2_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~9_combout\,
	combout => \E~3_combout\);

-- Location: LCCOMB_X12_Y4_N28
\W[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \W[0]~0_combout\ = (\Equal3~3_combout\ & (!\Equal0~11_combout\ & (\Equal1~1_combout\ & !\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal0~11_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal2~1_combout\,
	combout => \W[0]~0_combout\);

-- Location: LCCOMB_X12_Y4_N14
\E[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E[0]~2_combout\ = (\reset~input_o\) # (!\W[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \W[0]~0_combout\,
	combout => \E[0]~2_combout\);

-- Location: FF_X12_Y4_N25
\E[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \E~3_combout\,
	ena => \E[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E[0]~reg0_q\);

-- Location: FF_X12_Y4_N31
\E[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Equal1~1_combout\,
	ena => \E[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E[1]~reg0_q\);

-- Location: LCCOMB_X11_Y4_N4
\S~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ((\Equal0~11_combout\) # ((!\Equal4~1_combout\ & !\Equal2~1_combout\))) # (!\Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal4~1_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal0~11_combout\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X11_Y4_N14
\S[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S[0]~3_combout\ = (\reset~input_o\) # ((!\Equal0~11_combout\ & (\Equal1~1_combout\ & !\N[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \reset~input_o\,
	datac => \Equal1~1_combout\,
	datad => \N[1]~1_combout\,
	combout => \S[0]~3_combout\);

-- Location: FF_X11_Y4_N5
\S[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \S~2_combout\,
	ena => \S[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[0]~reg0_q\);

-- Location: FF_X11_Y4_N11
\S[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Equal3~3_combout\,
	ena => \S[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[1]~reg0_q\);

-- Location: LCCOMB_X12_Y4_N20
\W~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \W~1_combout\ = ((!\Equal6~3_combout\ & !\Equal4~1_combout\)) # (!\W[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datab => \Equal4~1_combout\,
	datad => \W[0]~0_combout\,
	combout => \W~1_combout\);

-- Location: LCCOMB_X12_Y4_N4
\W[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \W[0]~2_combout\ = ((\Equal7~2_combout\) # ((\Equal4~1_combout\) # (\Equal6~3_combout\))) # (!\Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal7~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal6~3_combout\,
	combout => \W[0]~2_combout\);

-- Location: LCCOMB_X12_Y4_N18
\W[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \W[0]~3_combout\ = (\reset~input_o\) # ((\W[0]~2_combout\ & \W[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \W[0]~2_combout\,
	datad => \W[0]~0_combout\,
	combout => \W[0]~3_combout\);

-- Location: FF_X12_Y4_N21
\W[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \W~1_combout\,
	ena => \W[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[0]~reg0_q\);

-- Location: FF_X12_Y4_N23
\W[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1|ALT_INV_sign~clkctrl_outclk\,
	d => \Equal5~0_combout\,
	ena => \W[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[1]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N29
\on_switch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_on_switch,
	o => \on_switch~input_o\);

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

ww_N(0) <= \N[0]~output_o\;

ww_N(1) <= \N[1]~output_o\;

ww_E(0) <= \E[0]~output_o\;

ww_E(1) <= \E[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_W(0) <= \W[0]~output_o\;

ww_W(1) <= \W[1]~output_o\;
END structure;


