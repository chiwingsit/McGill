LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY router IS
	GENERIC(
		cache_delay : time := 1 ns;
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
		s_waitrequest_out: OUT STD_LOGIC
	);
END router;

ARCHITECTURE behaviour OF router IS

	COMPONENT counter IS
	PORT(  clock:  IN std_logic;
	  reset:  IN std_logic;
	  count:  OUT std_logic_vector(1 downto 0)
	);
	end COMPONENT;
	
	SIGNAL lcl_header_in: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL lcl_writedata_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL lcl_address_in: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL lcl_write_in: STD_LOGIC;
	SIGNAL lcl_waitrequest_in: STD_LOGIC;
		
	SIGNAL lcl_header_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL lcl_writedata_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL lcl_address_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL lcl_write_out: STD_LOGIC;
	SIGNAL lcl_waitrequest_out: STD_LOGIC;
	
	SIGNAL e_empty: STD_LOGIC;
	SIGNAL e_full: STD_LOGIC;
	SIGNAL e_enr: STD_LOGIC;
	SIGNAL e_enw: STD_LOGIC;
	SIGNAL e_dataout: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL e_datain: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL n_empty: STD_LOGIC;
	SIGNAL n_full: STD_LOGIC;
	SIGNAL n_enr: STD_LOGIC;
	SIGNAL n_enw: STD_LOGIC;
	SIGNAL n_dataout: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL n_datain: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL w_empty: STD_LOGIC;
	SIGNAL w_full: STD_LOGIC;
	SIGNAL w_enr: STD_LOGIC;
	SIGNAL w_enw: STD_LOGIC;
	SIGNAL w_dataout: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL w_datain: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL s_empty: STD_LOGIC;
	SIGNAL s_full: STD_LOGIC;
	SIGNAL s_enr: STD_LOGIC;
	SIGNAL s_enw: STD_LOGIC;
	SIGNAL s_dataout: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL s_datain: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL lcl_empty: STD_LOGIC;
	SIGNAL lcl_full: STD_LOGIC;
	SIGNAL lcl_enr: STD_LOGIC;
	SIGNAL lcl_enw: STD_LOGIC;
	SIGNAL lcl_dataout: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL lcl_datain: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL counter_reset: STD_LOGIC := '1';
	SIGNAL count: STD_LOGIC_VECTOR(1 downto 0);
	
BEGIN
	
	--Count the number of words read or written
	--the clock is wired to the m_waitrequest and counts up when on falling edges
	word_counter: counter PORT MAP(
					clock,
					counter_reset,
					count
					);
					
	

END behaviour;