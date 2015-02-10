library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY counter IS
PORT(	clk :  IN STD_LOGIC;
		reset :  IN STD_LOGIC;
		count :  OUT STD_LOGIC_VECTOR(1 downto 0)
		);
END counter;

ARCHITECTURE behaviour OF counter IS         
SIGNAL pre_count: STD_LOGIC_VECTOR(1 downto 0);
BEGIN
PROCESS(clk, reset)
BEGIN
	IF reset = '1' THEN
        pre_count <= "00";
	ELSIF(clk='0' and clk'EVENT) THEN
		pre_count <= pre_count + "1";
	END IF;
END PROCESS;  
count <= pre_count;
END behaviour;