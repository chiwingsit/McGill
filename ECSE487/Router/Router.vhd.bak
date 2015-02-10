LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cache IS
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
END cache;

ARCHITECTURE behaviour OF cache IS

	COMPONENT counter IS
	PORT(  clk:  IN std_logic;
	  reset:  IN std_logic;
	  count:  OUT std_logic_vector(1 downto 0)
	);
	end COMPONENT;

	CONSTANT index_amount : INTEGER := 256;
	CONSTANT dirty_bit_width : INTEGER := 1;
	CONSTANT valid_bit_width : INTEGER := 1;
	CONSTANT word_width : INTEGER := 32;
	CONSTANT index_width : INTEGER := 8;
	CONSTANT tag_width : INTEGER := 21;

	TYPE MEM IS ARRAY(index_amount-1 downto 0) OF STD_LOGIC_VECTOR(dirty_bit_width+valid_bit_width+tag_width+(4*word_width)-1 DOWNTO 0);
	SIGNAL ram_block: MEM;
	SIGNAL line_register: STD_LOGIC_VECTOR(dirty_bit_width+valid_bit_width+tag_width+(4*word_width)-1 DOWNTO 0);
	
	SIGNAL readdata_reg: STD_LOGIC_VECTOR(word_width-1 downto 0);
	SIGNAL writedata_reg: STD_LOGIC_VECTOR(word_width-1 downto 0);
	SIGNAL read_adr_reg: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL write_adr_reg: STD_LOGIC_VECTOR(31 downto 0);
	
	SIGNAL dirty_bit, valid_bit: STD_LOGIC;
	SIGNAL line_tag: STD_LOGIC_VECTOR(tag_width-1 downto 0);
	
	SIGNAL word_offset: STD_LOGIC_VECTOR(1 downto 0);
	SIGNAL index: STD_LOGIC_VECTOR(index_width-1 downto 0);
	SIGNAL address_tag: STD_LOGIC_VECTOR(tag_width-1 downto 0);
	SIGNAL bypass: STD_LOGIC;
	
	SIGNAL cache_hit: STD_LOGIC := '0';
	SIGNAL read_write: STD_LOGIC;
	SIGNAL write_waitreq_reg: STD_LOGIC := '1';
	SIGNAL read_waitreq_reg: STD_LOGIC := '1';
	
	TYPE state_type is (idle,miss,hit,read_mem,read_cache,write_mem,write_cache,invalid);
	SIGNAL state: state_type;
	SIGNAL reset: STD_LOGIC;
	
	TYPE WORDS_ARRAY IS ARRAY(3 DOWNTO 0) OF STD_LOGIC_VECTOR(word_width-1 downto 0);
	SIGNAL words: WORDS_ARRAY;
	SIGNAL words_reg: WORDS_ARRAY;
	SIGNAL dirty_bit_reg: STD_LOGIC;
	
	SIGNAL counter_reset: STD_LOGIC := '1';
	SIGNAL count: STD_LOGIC_VECTOR(1 downto 0);
	
	SIGNAL write_done: STD_LOGIC := '0';
	
BEGIN
	
	--Count the number of words read or written
	--the clock is wired to the m_waitrequest and counts up when on falling edges
	word_counter: counter PORT MAP(
					m_waitrequest,
					counter_reset,
					count
					);

	-- Decompose the address
	word_offset <= s_adr(1 downto 0);
	index <= s_adr(9 downto 2);
	address_tag <= s_adr(30 downto 10);
	bypass <= s_adr(31);
	
	--This is the main section of the SRAM model
	mem_process: PROCESS (clock)
	BEGIN
		--This is a cheap trick to initialize the SRAM in simulation
		IF(now < 1 ps)THEN
			For i in 0 to index_amount-1 LOOP
				ram_block(i) <= std_logic_vector(to_unsigned(i,151));
			END LOOP;
		END IF;
		
		--This is the actual synthesizable SRAM block
		IF (clock'event AND clock = '1') THEN
			write_done <= '0';
			
			-- Get and decompose the line
			line_register <= ram_block(to_integer(unsigned(index)));
			dirty_bit <= line_register(150);
			valid_bit <= line_register(149);
			line_tag <= line_register(148 downto 128);
			words(0) <= line_register(127 downto 96);
			words(1) <= line_register(95 downto 64);
			words(2) <= line_register(63 downto 32);
			words(3) <= line_register(31 downto 0);
			
			IF(line_tag = address_tag) THEN
				cache_hit <= '1';
			END IF;
			
			-- state is write_cache then write to cache
			IF (state = write_cache) THEN
				valid_bit <= '1';
				ram_block(to_integer(unsigned(index))) <= dirty_bit_reg & valid_bit & address_tag & words_reg(0) & words_reg(1) & words_reg(2) & words_reg(3);
				write_done <= '1';
			END IF;
		END IF;
	END PROCESS;
	
	cache_fsm: PROCESS(clock,reset)
	BEGIN
		IF reset = '1' THEN
				state <= idle;
		END IF;
		CASE state IS
			WHEN idle =>
				IF(s_read OR s_write) = '1' THEN -- if either read or write go to next state
					IF bypass = '1' THEN -- if bypass directly read or write to memory
						IF s_write = '1' THEN
							state <= write_mem;
						ELSIF s_read = '1' THEN
							state <= read_mem;
						END IF;
					ELSIF(cache_hit='1' AND valid_bit = '1') THEN -- if not bypass then go to hit or miss
						state <= hit;
					ELSE
						state <= miss;
					END IF;
				ELSE
					state <= idle;
				END IF;
			WHEN hit => -- if hit go to read_cache or write_cache
				IF s_read = '1' THEN
					state <= read_cache;
				ELSIF s_write = '1' THEN
					state <= write_cache;
				END IF;
			WHEN miss => -- miss state
				IF(dirty_bit='1' AND valid_bit='1') THEN -- if dirty bit and valid bit then write the line data to main memory
					state <= write_mem;
				ELSE -- otherwise get the line from the read memory
					state <= read_mem;
				END IF;
			WHEN read_mem => -- Read data from main memory
				m_read <= '1'; -- set the master read to 1
				m_adr <= to_integer(unsigned(s_adr));

				counter_reset <= '0';
				read_adr_reg <= s_adr(31 downto 2) & count; --changes the address depending on the count
				m_adr <= to_integer(unsigned(read_adr_reg));
				words_reg(to_integer(unsigned(count))) <= m_readdata;
				IF m_waitrequest = '0' THEN -- if m_waitrequest is low then set m_read to low
					m_read <= '0';
				END IF;
				IF(count /= "11") THEN --if we have not read 4 words stay in read_mem state 
					state <= read_mem;
				ELSE --finally read 4 words go to next state
					m_read <= '0';
					counter_reset <= '1'; --reset counter
					dirty_bit_reg <= '0';
					state <= write_cache;
				END IF;
			WHEN read_cache => -- read from cache and return the right word depending on the offset
				readdata_reg <= words(to_integer(unsigned(word_offset)));
				state <= idle;
			WHEN write_mem =>
				m_write <= '1';
				IF bypass = '1' THEN
					m_adr <= to_integer(unsigned(s_adr));
					m_writedata <= s_writedata;
					IF(m_waitrequest /= '0') THEN --write one word to main memory
						state <= write_mem;
					ELSE
						state <= read_mem;
					END IF;
				ELSIF(s_read = '1' OR s_write = '1') THEN
					counter_reset <= '0';
					write_adr_reg <= '0' & line_tag & index & count; --32 bits address where to write the data in main memory
					m_adr <= to_integer(unsigned(write_adr_reg));
					m_writedata <= words(to_integer(unsigned(count)));--change the offset depending on the count
					IF m_waitrequest = '0' THEN --if m_waitrequest is low 
						m_write <= '0';
					END IF;
					IF(count /= "11") THEN -- need to write 4 words
						state <= write_mem;
					ELSE --wrote 4 words, reset counter and go to next state
						counter_reset <= '1';
						IF(s_read = '1') THEN
							state <= read_mem;
						ELSIF(s_write = '1') THEN
							words_reg <= words;
							words_reg(to_integer(unsigned(word_offset))) <= s_writedata;
							dirty_bit_reg <= '1';
							state <= write_cache;
						END IF;
					END IF;
				END IF;
			WHEN write_cache =>
				IF write_done = '1' THEN
					IF s_read = '1' THEN
						state <= read_cache;
					ELSE
						state <= idle;
					END IF;
				ELSE --stay in write cache mode until writing is done
					state <= write_cache;
				END IF;
			WHEN OTHERS =>
				state <= invalid;
		END CASE;
	END PROCESS;
	s_readdata <= readdata_reg;
	
	--The waitrequest signal is used to vary response time in simulation
	--Read and write should never happen at the same time.
	waitreq_w_proc: PROCESS (state)
	BEGIN
		IF(write_done = '1')THEN
			write_waitreq_reg <= '0' after cache_delay, '1' after cache_delay + clock_period;
		END IF;
	END PROCESS;

	waitreq_r_proc: PROCESS (write_done)
	BEGIN
		IF(state = read_cache)THEN
			read_waitreq_reg <= '0' after cache_delay, '1' after cache_delay + clock_period;
		END IF;
	END PROCESS;
	s_waitrequest <= (write_waitreq_reg and read_waitreq_reg);
END behaviour;