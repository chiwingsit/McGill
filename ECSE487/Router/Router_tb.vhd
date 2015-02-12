LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY router_tb IS
END router_tb;

ARCHITECTURE behaviour OF router_tb IS

--Declare the component that you are testing:
COMPONENT router IS
	GENERIC(
		clock_period : time := 1 ns
	);
	PORT (
		clock: IN STD_LOGIC;
		
		e_header_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		e_writedata_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		e_address_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		e_write_in: IN STD_LOGIC;
		e_waitrequest_in: IN STD_LOGIC;
		
		e_header_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		e_writedata_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		e_address_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		e_write_out: OUT STD_LOGIC;
		e_waitrequest_out: OUT STD_LOGIC;
		
		n_header_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		n_writedata_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		n_address_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		n_write_in: IN STD_LOGIC;
		n_waitrequest_in: IN STD_LOGIC;
		
		n_header_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		n_writedata_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		n_address_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		n_write_out: OUT STD_LOGIC;
		n_waitrequest_out: OUT STD_LOGIC;
		
		w_header_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		w_writedata_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		w_address_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		w_write_in: IN STD_LOGIC;
		w_waitrequest_in: IN STD_LOGIC;
		
		w_header_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		w_writedata_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		w_address_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		w_write_out: OUT STD_LOGIC;
		w_waitrequest_out: OUT STD_LOGIC;
		
		s_header_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		s_writedata_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		s_address_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		s_write_in: IN STD_LOGIC;
		s_waitrequest_in: IN STD_LOGIC;
		
		s_header_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		s_writedata_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		s_address_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		s_write_out: OUT STD_LOGIC;
		s_waitrequest_out: OUT STD_LOGIC;
		
		l_header_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		l_writedata_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		l_address_in: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		l_write_in: IN STD_LOGIC;
		l_waitrequest_in: IN STD_LOGIC;

		l_header_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		l_writedata_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		l_address_out: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		l_write_out: OUT STD_LOGIC;
		l_waitrequest_out: OUT STD_LOGIC;
		
		reset: IN STD_LOGIC
	);
END COMPONENT;
	
    --all the input signals with initial values
	signal clk : std_logic := '0';
	constant clk_period : time := 1 ns;

	SIGNAL e_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL e_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL e_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL e_write_in: STD_LOGIC;
	SIGNAL e_waitrequest_in: STD_LOGIC;
 
	SIGNAL e_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL e_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL e_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL e_write_out: STD_LOGIC;
	SIGNAL e_waitrequest_out: STD_LOGIC;
 
	SIGNAL n_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL n_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_write_in: STD_LOGIC;
	SIGNAL n_waitrequest_in: STD_LOGIC;
 
	SIGNAL n_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL n_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_write_out: STD_LOGIC;
	SIGNAL n_waitrequest_out: STD_LOGIC;
 
	SIGNAL w_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL w_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_write_in: STD_LOGIC;
	SIGNAL w_waitrequest_in: STD_LOGIC;
 
	SIGNAL w_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL w_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_write_out: STD_LOGIC;
	SIGNAL w_waitrequest_out: STD_LOGIC;
 
	SIGNAL s_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL s_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_write_in: STD_LOGIC;
	SIGNAL s_waitrequest_in: STD_LOGIC;
 
	SIGNAL s_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL s_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_write_out: STD_LOGIC;
	SIGNAL s_waitrequest_out: STD_LOGIC;
 
	SIGNAL l_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL l_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL l_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL l_write_in: STD_LOGIC;
	SIGNAL l_waitrequest_in: STD_LOGIC;
	
	SIGNAL l_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL l_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL l_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL l_write_out: STD_LOGIC;
	SIGNAL l_waitrequest_out: STD_LOGIC;
	
	SIGNAL reset: STD_LOGIC := '1';

BEGIN

    --dut => Device Under Test
    dut: router PORT MAP(
					clk,
						e_header_in,
						e_writedata_in,
						e_address_in,
						e_write_in,
						e_waitrequest_in,
					 
						e_header_out,
						e_writedata_out,
						e_address_out,
						e_write_out,
						e_waitrequest_out,
					 
						n_header_in,
						n_writedata_in,
						n_address_in,
						n_write_in,
						n_waitrequest_in,
					 
						n_header_out,
						n_writedata_out,
						n_address_out,
						n_write_out,
						n_waitrequest_out,
					 
						w_header_in,
						w_writedata_in,
						w_address_in,
						w_write_in,
						w_waitrequest_in,
					 
						w_header_out,
						w_writedata_out,
						w_address_out,
						w_write_out,
						w_waitrequest_out,
					 
						s_header_in,
						s_writedata_in,
						s_address_in,
						s_write_in,
						s_waitrequest_in,
					 
						s_header_out,
						s_writedata_out,
						s_address_out,
						s_write_out,
						s_waitrequest_out,
					 
						l_header_in,
						l_writedata_in,
						l_address_in,
						l_write_in,
						l_waitrequest_in,
						
						l_header_out,
						l_writedata_out,
						l_address_out,
						l_write_out,
						l_waitrequest_out,
						reset
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
		reset <= '0';
		l_address_in<=x"00000001";
		l_header_in<="0000";
		l_write_in<='1', '0' after clk_period;
		l_writedata_in<=x"0000000F";
--		
--		wait for clk_period;
--		--read miss read from main memory than read cache
--    	s_adr <= bypass & address_tag & index & word_offset;
--		s_read <= '1';
--		wait until rising_edge(s_waitrequest);
--			assert s_readdata = s_adr report "read unsuccessful" severity error;
--    	s_read <= '0';
--		
--    	wait for clk_period;
--		
--		--write miss read from main memory than write cache
--    	s_writedata <= X"12341234";
--    	s_write <= '1';
--    	wait until rising_edge(s_waitrequest);
--			s_write <= '0';
--			s_read <= '1';
--		
--		--cache read hit
--		wait until rising_edge(s_waitrequest);
--			assert s_readdata = x"12341234" report "write unsuccessful" severity error;
--    	s_read <= '0';
--    	wait for clk_period;
--		
--		--cache write hit set dirty bit to 1
--		word_offset <= "01";
--		s_adr <= bypass & address_tag & index & word_offset;
--		s_writedata <= X"12340000";
--		s_write <= '1';
--		wait until rising_edge(s_waitrequest);
--		assert s_readdata = x"12340000" report "write unsuccessful" severity error;
--		s_write <= '0';
--		
--		address_tag <= "000000000000000000100";
--		s_adr <= bypass & address_tag & index & word_offset;
--		
--		--write cache miss with dirty bit
--		wait for clk_period;
--		s_writedata <= X"12345000";
--		s_write <= '1';
--		wait until rising_edge(s_waitrequest);
--		assert s_readdata = x"12345000" report "write unsuccessful" severity error;
--		s_write <= '0';
--		
--		--read cache miss with dirty bit
--		address_tag <= "000000000000000000110";
--		s_adr <= bypass & address_tag & index & word_offset;
--		wait for clk_period;
--		s_read <= '1';
--		wait until rising_edge(s_waitrequest);
--		assert s_readdata = s_adr report "read unsuccessful" severity error;
--		s_write <= '0';
	END PROCESS;

 
END;