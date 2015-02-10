library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY counter IS
PORT(	clock :  IN STD_LOGIC;
		reset :  IN STD_LOGIC;
		count :  OUT STD_LOGIC_VECTOR(1 downto 0)
		);
END counter;

ARCHITECTURE behaviour OF counter IS         
SIGNAL pre_count: STD_LOGIC_VECTOR(1 downto 0) := "00";
BEGIN
PROCESS(clock, reset)
BEGIN
	IF reset = '1' THEN
        pre_count <= "00";
	ELSIF(clock='0' and clock'EVENT) THEN
		pre_count <= pre_count + "1";
	END IF;
END PROCESS;  
count <= pre_count;
END behaviour;