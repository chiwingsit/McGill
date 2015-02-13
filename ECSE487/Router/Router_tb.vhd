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
	SIGNAL e_waitrequest_in: STD_LOGIC := '0';
 
	SIGNAL e_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL e_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL e_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL e_write_out: STD_LOGIC;
	SIGNAL e_waitrequest_out: STD_LOGIC;
 
	SIGNAL n_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL n_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_write_in: STD_LOGIC;
	SIGNAL n_waitrequest_in: STD_LOGIC := '0';
 
	SIGNAL n_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL n_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL n_write_out: STD_LOGIC;
	SIGNAL n_waitrequest_out: STD_LOGIC;
 
	SIGNAL w_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL w_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_write_in: STD_LOGIC;
	SIGNAL w_waitrequest_in: STD_LOGIC := '0';
 
	SIGNAL w_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL w_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL w_write_out: STD_LOGIC;
	SIGNAL w_waitrequest_out: STD_LOGIC;
 
	SIGNAL s_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL s_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_write_in: STD_LOGIC;
	SIGNAL s_waitrequest_in: STD_LOGIC := '0';
 
	SIGNAL s_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL s_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL s_write_out: STD_LOGIC;
	SIGNAL s_waitrequest_out: STD_LOGIC;
 
	SIGNAL l_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL l_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL l_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL l_write_in: STD_LOGIC;
	SIGNAL l_waitrequest_in: STD_LOGIC := '0';
	
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
		
		-- Send to node (0,0)
		l_header_in<="0000";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000001";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(n_write_out);
			assert n_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (0,1)
		l_header_in<="0001";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000002";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(n_write_out);
			assert n_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (0,2)
		l_header_in<="0010";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000003";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(e_write_out);
			assert e_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;

		-- Send to node (1,0)
		l_header_in<="0100";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000004";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(w_write_out);
			assert w_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (1,1)
		e_header_in<="0101";
		e_address_in<=x"00000001";
		e_writedata_in<=x"00000005";
		e_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(l_write_out);
			assert l_writedata_out = e_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (1,2)
		l_header_in<="0110";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000006";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(e_write_out);
			assert e_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (2,0)
		l_header_in<="1000";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000007";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(w_write_out);
			assert w_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (2,1)
		l_header_in<="1001";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000008";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(s_write_out);
			assert s_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		-- Send to node (2,2)
		l_header_in<="1010";
		l_address_in<=x"00000001";
		l_writedata_in<=x"00000009";
		l_write_in<='1', '0' after 3*clk_period/2;
		wait until rising_edge(s_write_out);
			assert s_writedata_out = l_writedata_in report "send data unsuccessful" severity error;
		wait for clk_period;
		
		
		--Block north port
		n_waitrequest_in <= '1';
		
		-- Send data to the blocked north port to fill up the queue
		l_header_in<="0001";
		l_address_in<=x"00000001";
		l_write_in<='1';
		l_writedata_in<=x"00000002";
		wait until rising_edge(l_waitrequest_out);
		n_waitrequest_in <= '0';

	END PROCESS;

 
END;