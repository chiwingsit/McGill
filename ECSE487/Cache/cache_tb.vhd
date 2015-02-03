LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cache_tb IS
END cache_tb;

ARCHITECTURE behaviour OF cache_tb IS

--Declare the component that you are testing:
	COMPONENT cache IS
		GENERIC(
			cache_delay : time := 1 ns;
			clock_period : time := 1 ns
		);
		PORT (
			clock: IN STD_LOGIC;
			s_writedata: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			s_adr: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			s_write: IN STD_LOGIC;
			s_read: IN STD_LOGIC;
			s_readdata: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			s_waitrequest: OUT STD_LOGIC;
			m_adr : OUT INTEGER RANGE 0 TO 24575;
			m_read : OUT STD_LOGIC;
			m_readdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			m_write : OUT STD_LOGIC;
			m_writedata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			m_waitrequest : IN STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT memory IS
		GENERIC(
			data_width : INTEGER := 32;
			ram_size : INTEGER := 24576;
			mem_delay : time := 10 ns;
			clock_period : time := 1 ns
		);
		PORT (
			clock: IN STD_LOGIC;
			writedata: IN STD_LOGIC_VECTOR (data_width-1 DOWNTO 0);
			address: IN INTEGER RANGE 0 TO ram_size-1;
			memwrite: IN STD_LOGIC := '0';
			memread: IN STD_LOGIC := '0';
			readdata: OUT STD_LOGIC_VECTOR (data_width-1 DOWNTO 0);
			waitrequest: OUT STD_LOGIC
		);
	END COMPONENT;
	
    --all the input signals with initial values
	signal clk : std_logic := '0';
	constant clk_period : time := 1 ns;
	signal s_writedata: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal s_adr: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal s_write: STD_LOGIC;
	signal s_read: STD_LOGIC;
	signal s_readdata: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal s_waitrequest: STD_LOGIC;
	signal m_adr : INTEGER RANGE 0 TO 24575;
	signal m_read : STD_LOGIC;
	signal m_readdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal m_write : STD_LOGIC;
	signal m_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal m_waitrequest : STD_LOGIC;
	
	SIGNAL word_offset: STD_LOGIC_VECTOR(1 downto 0);
	SIGNAL index: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL address_tag: STD_LOGIC_VECTOR(20 downto 0);
	SIGNAL bypass: STD_LOGIC;

BEGIN

    --dut => Device Under Test
    dut: cache PORT MAP(
					clk,
					s_writedata,
					s_adr,
					s_write,
					s_read,
					s_readdata,
					s_waitrequest,
					m_adr,
					m_read,
					m_readdata,
					m_write,
					m_writedata,
					m_waitrequest
    			);

	main_memory: memory PORT MAP(
					clk,
					m_writedata,
					m_adr,
					m_write,
					m_read,
					m_readdata,
					m_waitrequest
    			);
				
    clk_process : process
    BEGIN
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    test_process : process
    BEGIN
    	wait for clk_period;
	
		word_offset <= "00";
		index <= "00000001";
		address_tag <= "000000000000000000101";
		bypass <= '0';
		
		wait for clk_period;
		--read miss read from main memory than read cache
    	s_adr <= bypass & address_tag & index & word_offset;
		s_read <= '1';
		wait until rising_edge(s_waitrequest);
			assert s_readdata = s_adr report "read unsuccessful" severity error;
    	s_read <= '0';
		
    	wait for clk_period;
		
		--write miss read from main memory than write cache
    	s_writedata <= X"12341234";
    	s_write <= '1';
    	wait until rising_edge(s_waitrequest);
			s_write <= '0';
			s_read <= '1';
		
		--cache read hit
		wait until rising_edge(s_waitrequest);
			assert s_readdata = x"12341234" report "write unsuccessful" severity error;
    	s_read <= '0';
    	wait for clk_period;
		
		--cache write hit set dirty bit to 1
		word_offset <= "01";
		s_adr <= bypass & address_tag & index & word_offset;
		s_writedata <= X"12340000";
		s_write <= '1';
		wait until rising_edge(s_waitrequest);
		assert s_readdata = x"12340000" report "write unsuccessful" severity error;
		s_write <= '0';
		
		address_tag <= "000000000000000000100";
		s_adr <= bypass & address_tag & index & word_offset;
		
		--write cache miss with dirty bit
		wait for clk_period;
		s_writedata <= X"12345000";
		s_write <= '1';
		wait until rising_edge(s_waitrequest);
		assert s_readdata = x"12345000" report "write unsuccessful" severity error;
		s_write <= '0';
		
		--read cache miss with dirty bit
		address_tag <= "000000000000000000110";
		s_adr <= bypass & address_tag & index & word_offset;
		wait for clk_period;
		s_read <= '1';
		wait until rising_edge(s_waitrequest);
		assert s_readdata = s_adr report "read unsuccessful" severity error;
		s_write <= '0';
    END PROCESS;

 
END;