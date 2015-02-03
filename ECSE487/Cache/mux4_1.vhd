library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY mux4_1 IS
	PORT(
		input0: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		input1: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		input2: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		input3: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END mux4_1;

ARCHITECTURE behaviour OF mux4_1 IS
	BEGIN
		PROCESS(input0,input1,input2,input3, sel)
		BEGIN
			CASE sel IS
				  WHEN "00" => output <= input0;
				  WHEN "01" => output <= input1;
				  WHEN "10" => output <= input2;
				  WHEN OTHERS => output <= input3; 
			END CASE;
		END PROCESS;
END behaviour;