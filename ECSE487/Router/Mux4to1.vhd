LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity mux4to1 is
port( A,B,C,D: in std_logic_vector (68 downto 0);
	sel: in std_logic_vector(1 downto 0);
	output: out std_logic_vector (68 downto 0));
end mux4to1;

architecture behavioral of mux4to1 is
begin
process(sel,A,B,C,D)
variable temp:std_logic_vector (68 downto 0);
begin
	case sel is
		when "00" => temp:=A;
		when "01" => temp:=B;
		when "10" => temp:=C;
		when others => temp:=D;
	end case;

	output<=temp;
end process;
end behavioral;
