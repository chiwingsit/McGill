  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 
          SIGNAL i0,i1,i2,i3,bitout :  std_logic_vector(31 downto 0):="00000000000000000000000000000000";
          SIGNAL sel :  std_logic_vector(1 downto 0):="00";
  BEGIN
    UUT : entity work.mux4_1 port map(i0,i1,i2,i3,sel,bitout);

     tb : PROCESS
     BEGIN
            i0<="00000000000000000000000000000001";
            i1<="00000000000000000000000000000010";
            i2<="00000000000000000000000000000011";
            i3<="00000000000000000000000000000111";
            sel <="00";
            wait for 2 ns;
            sel <="01";
            wait for 2 ns;
            sel <="10";
             wait for 2 ns;
             sel <="11";
              wait for 2 ns;
     END PROCESS tb;

  END;