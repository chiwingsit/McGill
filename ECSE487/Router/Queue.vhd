library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity queue is
port (  clk : in std_logic;
          enr : in std_logic;   --enable read,should be '0' when not in use.
          enw : in std_logic;    --enable write,should be '0' when not in use.
          dataout : out std_logic_vector(68 downto 0);    --output data
          datain : in std_logic_vector (68 downto 0);     --input data
          empty : out std_logic;     --set as '1' when the queue is empty
          full : out std_logic;     --set as '1' when the queue is full
			 rst : in std_logic
         );
end queue;

architecture Behavioral of queue is
type memory_type is array (15 downto 0) of std_logic_vector(68 downto 0);
signal memory : memory_type :=(others => (others => '0'));   --memory for queue.
signal head,tail : std_logic_vector(3 downto 0) :="0000";  --read and write pointers.
signal looped : boolean;

begin
	process(clk)
		begin
			if(clk'event and clk='1') then
				if(rst = '1') then
					head <= "0000";
					tail <= "0000";
					looped <= false;
					full <= '0';
					empty <= '1';
				else
					if(enr ='1') then
						dataout <= memory(conv_integer(tail));
						tail <= tail + '1';      --points to next address.
						looped <= false;
					end if;
					if(enw ='1') then
						memory(conv_integer(head)) <= datain;
						head <= head + '1';  --points to next address.
						looped <= true;
					end if;
				end if;
				if(tail = head) then --checking whether queue is full or not
					if(looped) then
						full <= '1';
					else
						empty <= '1';
					end if;
				else
					full <= '0';
					empty <= '0';
				end if;
			end if;
	end process;

end Behavioral;