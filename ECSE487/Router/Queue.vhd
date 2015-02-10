library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FIFO is
port (  clk : in std_logic;
          enr : in std_logic;   --enable read,should be '0' when not in use.
          enw : in std_logic;    --enable write,should be '0' when not in use.
          dataout : out std_logic_vector(31 downto 0);    --output data
          datain : in std_logic_vector (31 downto 0);     --input data
          empty : out std_logic;     --set as '1' when the queue is empty
          full : out std_logic     --set as '1' when the queue is full
         );
end FIFO;

architecture Behavioral of FIFO is
type memory_type is array (0 to 15) of std_logic_vector(31 downto 0);
signal memory : memory_type :=(others => (others => '0'));   --memory for queue.
signal head,tail : std_logic_vector(3 downto 0) :="0000";  --read and write pointers.

begin
	process(clk)
		begin
			if(clk'event and clk='1' and enr ='1') then
				dataout <= memory(conv_integer(head));
				head <= head + '1';      --points to next address.
			end if;
			if(clk'event and clk='1' and enw ='1') then
				memory(conv_integer(tail)) <= datain;
				tail <= tail + '1';  --points to next address.
			end if;
			if(tail = head + '1') then --checking whether queue is full or not
				full <='1';
			else
				full <='0';
			end if;
			if(head = tail + 1) then --checking whether queue is empty or not
				empty <='1';
			else
				empty <='0';
			end if;
	end process;

end Behavioral;