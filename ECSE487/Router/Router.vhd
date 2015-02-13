LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY router IS
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
END router;

ARCHITECTURE behaviour OF router IS

	COMPONENT counter IS
	PORT(  clock:  IN std_logic;
	  reset:  IN std_logic;
	  count:  OUT std_logic_vector(1 downto 0)
	);
	end COMPONENT;
	
	COMPONENT mux4to1 IS
	PORT( A,B,C,D: IN std_logic_vector (68 downto 0);
		sel: IN std_logic_vector(1 downto 0);
		output: OUT std_logic_vector (68 downto 0));
	end COMPONENT;
	
	COMPONENT queue is
	PORT (  clk : in std_logic;
				 enr : in std_logic;   --enable read,should be '0' when not in use.
				 enw : in std_logic;    --enable write,should be '0' when not in use.
				 dataout : out std_logic_vector(68 downto 0);    --output data
				 datain : in std_logic_vector (68 downto 0);     --input data
				 empty : out std_logic;     --set as '1' when the queue is empty
				 full : out std_logic;     --set as '1' when the queue is full
				 rst : in std_logic
				);
	end COMPONENT;
	
	--Signals for East queue
	SIGNAL e_empty: STD_LOGIC;
	SIGNAL e_full: STD_LOGIC;
	SIGNAL e_enr: STD_LOGIC;
	SIGNAL e_enw: STD_LOGIC;
	SIGNAL e_dataout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL e_datain: STD_LOGIC_VECTOR(68 DOWNTO 0);
	
	--Signals for North queue
	SIGNAL n_empty: STD_LOGIC;
	SIGNAL n_full: STD_LOGIC;
	SIGNAL n_enr: STD_LOGIC;
	SIGNAL n_enw: STD_LOGIC;
	SIGNAL n_dataout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL n_datain: STD_LOGIC_VECTOR(68 DOWNTO 0);
	
	--Signals for West queue
	SIGNAL w_empty: STD_LOGIC;
	SIGNAL w_full: STD_LOGIC;
	SIGNAL w_enr: STD_LOGIC;
	SIGNAL w_enw: STD_LOGIC;
	SIGNAL w_dataout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL w_datain: STD_LOGIC_VECTOR(68 DOWNTO 0);
	
	--Signals for South queue
	SIGNAL s_empty: STD_LOGIC;
	SIGNAL s_full: STD_LOGIC;
	SIGNAL s_enr: STD_LOGIC;
	SIGNAL s_enw: STD_LOGIC;
	SIGNAL s_dataout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL s_datain: STD_LOGIC_VECTOR(68 DOWNTO 0);
	
	--Signals for local queue
	SIGNAL l_empty: STD_LOGIC;
	SIGNAL l_full: STD_LOGIC;
	SIGNAL l_enr: STD_LOGIC;
	SIGNAL l_enw: STD_LOGIC;
	SIGNAL l_dataout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL l_datain: STD_LOGIC_VECTOR(68 DOWNTO 0);
	
	--Output for the multiplexer
	SIGNAL e_muxout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL n_muxout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL w_muxout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL s_muxout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	SIGNAL l_muxout: STD_LOGIC_VECTOR(68 DOWNTO 0);
	
	--One of the port has sent an output sucessfully
	SIGNAL e_done: STD_LOGIC;
	SIGNAL n_done: STD_LOGIC;
	SIGNAL w_done: STD_LOGIC;
	SIGNAL s_done: STD_LOGIC;
	SIGNAL l_done: STD_LOGIC;
	
	--Queue is waiting for data to be sent
	SIGNAL e_iswaiting: STD_LOGIC := '0';
	SIGNAL n_iswaiting: STD_LOGIC := '0';
	SIGNAL w_iswaiting: STD_LOGIC := '0';
	SIGNAL s_iswaiting: STD_LOGIC := '0';
	SIGNAL l_iswaiting: STD_LOGIC := '0';
	
	--The data sent by the queue has been received
	SIGNAL e_received: STD_LOGIC;
	SIGNAL n_received: STD_LOGIC;
	SIGNAL w_received: STD_LOGIC;
	SIGNAL s_received: STD_LOGIC;
	SIGNAL l_received: STD_LOGIC; 
	
	-- East port notifies the appropriate gate that the data has been received
	SIGNAL e_l_rcv: STD_LOGIC;
	SIGNAL e_n_rcv: STD_LOGIC;
	SIGNAL e_w_rcv: STD_LOGIC;
	SIGNAL e_s_rcv: STD_LOGIC;
	
	-- North port notifies the appropriate gate that the data has been received
	SIGNAL n_e_rcv: STD_LOGIC;
	SIGNAL n_l_rcv: STD_LOGIC;
	SIGNAL n_w_rcv: STD_LOGIC;
	SIGNAL n_s_rcv: STD_LOGIC;
	
	-- West port notifies the appropriate gate that the data has been received
	SIGNAL w_e_rcv: STD_LOGIC;
	SIGNAL w_n_rcv: STD_LOGIC;
	SIGNAL w_l_rcv: STD_LOGIC;
	SIGNAL w_s_rcv: STD_LOGIC;
	
	-- South port notifies the appropriate gate that the data has been received
	SIGNAL s_e_rcv: STD_LOGIC;
	SIGNAL s_n_rcv: STD_LOGIC;
	SIGNAL s_w_rcv: STD_LOGIC;
	SIGNAL s_l_rcv: STD_LOGIC;
	
	-- Local port notifies the appropriate gate that the data has been received
	SIGNAL l_e_rcv: STD_LOGIC;
	SIGNAL l_n_rcv: STD_LOGIC;
	SIGNAL l_w_rcv: STD_LOGIC;
	SIGNAL l_s_rcv: STD_LOGIC;
	
	-- Count signal
	SIGNAL count: STD_LOGIC_VECTOR(1 downto 0);
	
BEGIN
	
	--Count the number of words read or written
	turn_counter: counter PORT MAP(
					clock,
					reset,
					count
					);
	
	-- If write signal and queue not full then write to queue
	e_enw <= e_write_in AND NOT(e_full);				
	n_enw <= n_write_in AND NOT(n_full);
	w_enw <= w_write_in AND NOT(w_full);
	s_enw <= s_write_in AND NOT(s_full);
	l_enw <= l_write_in AND NOT(l_full);
	
	-- Contatenate the inputs into one signal
	e_datain <= e_header_in & e_writedata_in & e_address_in & e_write_in;
	n_datain <= n_header_in & n_writedata_in & n_address_in & n_write_in;
	w_datain <= w_header_in & w_writedata_in & w_address_in & w_write_in;
	s_datain <= s_header_in & s_writedata_in & s_address_in & s_write_in;
	l_datain <= l_header_in & l_writedata_in & l_address_in & l_write_in;
	
	-- East FIFO Queue
	e_fifo: queue PORT MAP(
				clock,
				 e_enr,
				 e_enw,
				 e_dataout,
				 e_datain,
				 e_empty,
				 e_full,
				 reset
				);
				
	-- North FIFO Queue
	n_fifo: queue PORT MAP(
				clock,
				 n_enr,
				 n_enw,
				 n_dataout,
				 n_datain,
				 n_empty,
				 n_full,
				 reset
				);
				
	-- West FIFO Queue
	w_fifo: queue PORT MAP(
				clock,
				 w_enr,
				 w_enw,
				 w_dataout,
				 w_datain,
				 w_empty,
				 w_full,
				 reset
				);
				
	-- South FIFO Queue
	s_fifo: queue PORT MAP(
				clock,
				 s_enr,
				 s_enw,
				 s_dataout,
				 s_datain,
				 s_empty,
				 s_full,
				 reset
				);
				
	-- Local FIFO Queue
	l_fifo: queue PORT MAP(
				clock,
				 l_enr,
				 l_enw,
				 l_dataout,
				 l_datain,
				 l_empty,
				 l_full,
				 reset
				);
				
	-- East outuput multiplexer	
	e_mux4to1: mux4to1 PORT MAP(
		l_dataout,
		n_dataout,
		w_dataout,
		s_dataout,
		count,
		e_muxout
	);
	
	-- North outuput multiplexer	
	n_mux4to1: mux4to1 PORT MAP(
		e_dataout,
		l_dataout,
		w_dataout,
		s_dataout,
		count,
		n_muxout
	);
	
	-- West outuput multiplexer	
	w_mux4to1: mux4to1 PORT MAP(
		e_dataout,
		n_dataout,
		l_dataout,
		s_dataout,
		count,
		w_muxout
	);

	-- South outuput multiplexer	
	s_mux4to1: mux4to1 PORT MAP(
		e_dataout,
		n_dataout,
		w_dataout,
		l_dataout,
		count,
		s_muxout
	);
	
	-- Local outuput multiplexer	
	l_mux4to1: mux4to1 PORT MAP(
		e_dataout,
		n_dataout,
		w_dataout,
		s_dataout,
		count,
		l_muxout
	);

	-- Determine if the output of the multiplexer is sent to the right port by checking the header
	PROCESS (e_muxout,n_muxout,w_muxout,s_muxout,l_muxout)
	BEGIN		
		IF (l_muxout(68 downto 65) = "0101") THEN
			l_header_out <= l_muxout(68 downto 65);
			l_writedata_out <= l_muxout(64 downto 33);
			l_address_out <= l_muxout(32 downto 1);
			l_write_out <= l_muxout(0) AND NOT(l_waitrequest_in);
			l_done <= '1', '0' after clock_period;
		ELSE
			l_write_out <= '0';
		END IF;
		IF (e_muxout(68 downto 65) = "0110" OR e_muxout(68 downto 65) = "0010") THEN
			e_header_out <= e_muxout(68 downto 65);
			e_writedata_out <= e_muxout(64 downto 33);
			e_address_out <= e_muxout(32 downto 1);
			e_write_out <= e_muxout(0) AND NOT(e_waitrequest_in);
			e_done <= '1', '0' after clock_period;
		ELSE
			e_write_out <= '0';
		END IF;
		IF (n_muxout(68 downto 65) = "0001" OR n_muxout(68 downto 65) = "0000") THEN
			n_header_out <= n_muxout(68 downto 65);
			n_writedata_out <= n_muxout(64 downto 33);
			n_address_out <= n_muxout(32 downto 1);
			n_write_out <= n_muxout(0) AND NOT(n_waitrequest_in);
			n_done <= '1', '0' after clock_period;
		ELSE
			n_write_out <= '0';
		END IF;
		IF (w_muxout(68 downto 65) = "0100" OR w_muxout(68 downto 65) = "1000") THEN
			w_header_out <= w_muxout(68 downto 65);
			w_writedata_out <= w_muxout(64 downto 33);
			w_address_out <= w_muxout(32 downto 1);
			w_write_out <= w_muxout(0) AND NOT(w_waitrequest_in);
			w_done <= '1', '0' after clock_period;
		ELSE
			w_write_out <= '0';
		END IF;
		IF (s_muxout(68 downto 65) = "1001" OR s_muxout(68 downto 65) = "1010") THEN
			s_header_out <= s_muxout(68 downto 65);
			s_writedata_out <= s_muxout(64 downto 33);
			s_address_out <= s_muxout(32 downto 1);
			s_write_out <= s_muxout(0) AND NOT(s_waitrequest_in);
			s_done <= '1', '0' after clock_period;
		ELSE
			s_write_out <= '0';
		END IF;
	END PROCESS;
	
	e_hasreceived: PROCESS(e_done)
	BEGIN
		IF (e_done'event AND e_done = '1') THEN
			CASE count IS
				WHEN "00" => e_l_rcv <= '1', '0' after clock_period;
				WHEN "01" => e_n_rcv <= '1', '0' after clock_period;
				WHEN "10" => e_w_rcv <= '1', '0' after clock_period;
				WHEN OTHERS => e_s_rcv <= '1', '0' after clock_period;
			END CASE;
		END IF;
	END PROCESS;
	
	n_hasreceived: PROCESS(n_done)
	BEGIN
		IF (n_done'event AND n_done = '1') THEN
			CASE count IS
				WHEN "00" => n_e_rcv <= '1', '0' after clock_period;
				WHEN "01" => n_l_rcv <= '1', '0' after clock_period;
				WHEN "10" => n_w_rcv <= '1', '0' after clock_period;
				WHEN OTHERS => n_s_rcv <= '1', '0' after clock_period;
			END CASE;
		END IF;
	END PROCESS;
	
	w_hasreceived: PROCESS(w_done)
	BEGIN
		IF (w_done'event AND w_done = '1') THEN
			CASE count IS
				WHEN "00" => w_e_rcv <= '1', '0' after clock_period;
				WHEN "01" => w_n_rcv <= '1', '0' after clock_period;
				WHEN "10" => w_l_rcv <= '1', '0' after clock_period;
				WHEN OTHERS => w_s_rcv <= '1', '0' after clock_period;
			END CASE;
		END IF;
	END PROCESS;
	
	s_hasreceived: PROCESS(s_done)
	BEGIN
		IF (s_done'event AND s_done = '1') THEN
			CASE count IS
				WHEN "00" => s_e_rcv <= '1', '0' after clock_period;
				WHEN "01" => s_n_rcv <= '1', '0' after clock_period;
				WHEN "10" => s_w_rcv <= '1', '0' after clock_period;
				WHEN OTHERS => s_l_rcv <= '1', '0' after clock_period;
			END CASE;
		END IF;
	END PROCESS;
	
	l_hasreceived: PROCESS(l_done)
	BEGIN
		IF (l_done'event AND l_done = '1') THEN
			CASE count IS
				WHEN "00" => l_e_rcv <= '1', '0' after clock_period;
				WHEN "01" => l_n_rcv <= '1', '0' after clock_period;
				WHEN "10" => l_w_rcv <= '1', '0' after clock_period;
				WHEN OTHERS => l_s_rcv <= '1', '0' after clock_period;
			END CASE;
		END IF;
	END PROCESS;
	
	e_received <= (l_e_rcv OR n_e_rcv OR w_e_rcv OR s_e_rcv);
	n_received <= (e_n_rcv OR l_n_rcv OR w_n_rcv OR s_n_rcv);
	w_received <= (e_w_rcv OR n_w_rcv OR l_w_rcv OR s_w_rcv);
	s_received <= (e_s_rcv OR n_s_rcv OR w_s_rcv OR l_s_rcv);
	l_received <= (e_l_rcv OR n_l_rcv OR w_l_rcv OR s_l_rcv);
	
	-- Check if the queue should be waiting
	iswaiting: PROCESS(clock)
	BEGIN
		IF(clock'event AND clock='1') THEN
			IF (e_enr='1') THEN
				e_iswaiting <= '1';
			ELSIF(e_received='1') THEN
				e_iswaiting <= '0';
			END IF;
			
			IF (n_enr='1') THEN
				n_iswaiting <= '1';
			ELSIF(n_received='1') THEN
				n_iswaiting <= '0';
			END IF;
			
			IF (w_enr='1') THEN
				w_iswaiting <= '1';
			ELSIF(w_received='1') THEN
				w_iswaiting <= '0';
			END IF;
			
			IF (s_enr='1') THEN
				s_iswaiting <= '1';
			ELSIF(s_received='1') THEN
				s_iswaiting <= '0';
			END IF;
			
			IF (l_enr='1') THEN
				l_iswaiting <= '1';
			ELSIF(l_received='1') THEN
				l_iswaiting <= '0';
			END IF;
		END IF;
	END PROCESS;
	
	-- If queue is not waiting nor empty read the next entry of the queue
	e_enr <= e_iswaiting NOR e_empty;
	n_enr <= n_iswaiting NOR n_empty;
	w_enr <= w_iswaiting NOR w_empty;
	s_enr <= s_iswaiting NOR s_empty;
	l_enr <= l_iswaiting NOR l_empty;
	
	-- If queue is full send waitrequest signal
	e_waitrequest_out <= e_full;
	n_waitrequest_out <= n_full;
	w_waitrequest_out <= w_full;
	s_waitrequest_out <= s_full;
	l_waitrequest_out <= l_full;
	
END behaviour;