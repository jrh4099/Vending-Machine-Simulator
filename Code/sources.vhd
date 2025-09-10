----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Jonathan Hubbard
-- 
-- Create Date:    17:42:12 03/07/2018 
-- Design Name: 	vending_machine
-- Module Name:   coin_controller - Behavioral 
-- Project Name: 	561_vend_mach
-- Target Devices: Spartan 3E FPGA
-- Tool versions: 8.2
-- Description: TODO
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coin_controller is
	Port 	( 	Qp,Dp,Np,soda_req,reset_n,clk : in std_logic;
				soda_price : in std_logic_vector(3 downto 0);
				drop_soda,amt_err : out std_logic;
				amt_dep : out std_logic_vector(11 downto 0)
			);
end coin_controller;

architecture Behavioral of coin_controller is
	type state_type is (S_idle,S_wait,S_quarter,S_dime,S_nickel,S_soda_r,S_soda_d,S_soda_err,S_drop_wait,S_err_wait);
	signal state, next_state : state_type;
	signal amt_temp : std_logic_vector(11 downto 0) := (others => '0');	--temporary value for the current balance
	signal soda_cost : std_logic_vector(11 downto 0);	--actual cost of the current soda
begin
	sync_proc : process (clk) begin
		if rising_edge(clk) then
			if reset_n = '0' then
				state <= S_idle;
			else
				state <= next_state;
			end if;
		end if;
	end process sync_proc;
	
	drop_soda_decode : process (clk) begin
		if rising_edge(clk) then
			if reset_n = '0' then
				drop_soda <= '0';
			else
				case next_state is
					when S_drop_wait => drop_soda <= '1';
					when others => drop_soda <= '0';
				end case;
			end if;
		end if;
	end process drop_soda_decode;
	
	amt_err_decode : process (clk) begin
		if rising_edge(clk) then
			if reset_n = '0' then
				amt_err <= '0';
			else
				case next_state is
					when S_err_wait => amt_err <= '1';
					when others => amt_err <= '0';
				end case;
			end if;
		end if;
	end process amt_err_decode;
	
	amt_dep_decode : process (clk) begin
		if rising_edge(clk) then
			if reset_n = '0' then
				amt_temp <= (others => '0');
			else
			
				case next_state is
					when S_quarter => amt_temp <= std_logic_vector(signed(amt_temp) + to_signed(25,12));
					when S_dime => amt_temp <= std_logic_vector(signed(amt_temp) + to_signed(10,12));
					when S_nickel => amt_temp <= std_logic_vector(signed(amt_temp) + to_signed(5,12));
					when S_soda_d => amt_temp <= std_logic_vector(signed(amt_temp) - signed(soda_cost));
					when others => amt_temp <= amt_temp;
				end case;
				
			end if;
			amt_dep <= amt_temp; --assign the temporary value
		end if;
	end process amt_dep_decode;
	
	next_state_decode : process (state,Qp,Dp,Np,soda_req,soda_price,amt_temp,soda_cost) begin
		next_state <= state;
		case (soda_price) is --map the soda code to an actual cost
					when "0000" => soda_cost <= std_logic_vector(to_signed(55,12));
					when "0001" => soda_cost <= std_logic_vector(to_signed(85,12));
					when "0010" => soda_cost <= std_logic_vector(to_signed(95,12));
					when "0011" => soda_cost <= std_logic_vector(to_signed(125,12));
					when "0100" => soda_cost <= std_logic_vector(to_signed(135,12));
					when "0101" => soda_cost <= std_logic_vector(to_signed(150,12));
					when "0110" => soda_cost <= std_logic_vector(to_signed(225,12));
					when "0111" => soda_cost <= std_logic_vector(to_signed(250,12));
					when "1000" => soda_cost <= std_logic_vector(to_signed(300,12));
					when others => soda_cost <= std_logic_vector(to_signed(0,12)); --reserved
				end case;
		
		case (state) is
		
			when S_idle =>
				if Qp = '1' then
					next_state <= S_quarter;
				elsif Dp = '1' then
					next_state <= S_dime;
				elsif Np = '1' then
					next_state <= S_nickel;
				elsif soda_req = '1' then
					next_state <= S_Soda_r;
				else
					next_state <= S_idle;
				end if;
				
			when S_wait =>
				if Qp = '0' and Dp = '0' and Np = '0' and soda_req = '0' then
					next_state <= S_idle;
				else
					next_state <= S_wait;
				end if;
				
			when S_quarter =>
--				if Qp = '0' then
--					next_state <= S_idle;
--				else
					next_state <= S_wait;
--				end if;
				
			when S_dime =>
--				if Dp = '0' then
--					next_state <= S_idle;
--				else
					next_state <= S_wait;
--				end if;
				
			when S_nickel =>
--				if Np = '0' then
--					next_state <= S_idle;
--				else
					next_state <= S_wait;
--				end if;
				
			when S_soda_r =>
			
				if amt_temp < soda_cost then
					next_state <= S_soda_err;
				else
					next_state <= S_soda_d;
				end if;
				
			when S_drop_wait =>
				if soda_req = '1' then
					next_state <= S_drop_wait;
				else
					next_state <= S_idle;
				end if;
				
			when S_err_wait =>
				if soda_req = '1' then
					next_state <= S_err_wait;
				else
					next_state <= S_idle;
				end if;
			
			
			when S_soda_d =>
				next_state <= S_drop_wait;
				
			when others => --S_soda_err
				next_state <= S_err_wait;
				
		end case;
	end process next_state_decode;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Jonathan Hubbard
-- 
-- Create Date:    17:43:10 03/07/2018 
-- Design Name: 	vending_machine
-- Module Name:   seven_segment_decoder - Behavioral 
-- Project Name: 	561_vend_mach
-- Target Devices: Spartan 3E FPGA
-- Tool versions: 8.2
-- Description: TODO
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seven_segment_decoder is
	Port 	( 	BCD : in std_logic_vector(11 downto 0);
				hund_disp_n,tens_disp_n,ones_disp_n : out std_logic_vector(6 downto 0)
			);
end seven_segment_decoder;

architecture Behavioral of seven_segment_decoder is
	signal hund_temp,tens_temp,ones_temp : std_logic_vector(3 downto 0);
begin
	hund_temp <= BCD(11 downto 8);
	tens_temp <= BCD(7 downto 4);
	ones_temp <= BCD(3 downto 0);		
	
	with hund_temp select
		hund_disp_n <= 	"0000001" when "0000",
								"1001111" when "0001",
								"0010010" when "0010",
								"0000110" when "0011",
								"1001100" when "0100",
								"0100100" when "0101",
								"0100000" when "0110",
								"0001111" when "0111",
								"0000000" when "1000",
								"0000100" when "1001",
								"1111111" when others;
								
	with tens_temp select
		tens_disp_n <= 	"0000001" when "0000",
								"1001111" when "0001",
								"0010010" when "0010",
								"0000110" when "0011",
								"1001100" when "0100",
								"0100100" when "0101",
								"0100000" when "0110",
								"0001111" when "0111",
								"0000000" when "1000",
								"0000100" when "1001",
								"1111111" when others;
								
	with ones_temp select
		ones_disp_n <= 	"0000001" when "0000",
								"1001111" when "0001",
								"0010010" when "0010",
								"0000110" when "0011",
								"1001100" when "0100",
								"0100100" when "0101",
								"0100000" when "0110",
								"0001111" when "0111",
								"0000000" when "1000",
								"0000100" when "1001",
								"1111111" when others;
								
--								"1111110" when "0000",
--								"0110000" when "0001",
--								"1101101" when "0010",
--								"1111001" when "0011",
--								"0110011" when "0100",
--								"1011011" when "0101",
--								"1011111" when "0110",
--								"1110000" when "0111",
--								"1111111" when "1000",
--								"1111011" when "1001",
--								"0000000" when others;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Jonathan Hubbard
-- 
-- Create Date:   17:40:06 03/07/2018 
-- Design Name: 	vending_machine
-- Module Name:   vending_machine_controller - Structural
-- Project Name: 	561_vend_mach
-- Target Devices: Spartan 3E FPGA
-- Tool versions: 8.2
-- Description: TODO
--
-- Dependencies: coin_controller, seven_segment_display
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.bin_bcd.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vending_machine_controller is
	Port 	( 	Qp,Dp,Np,soda_req,reset_n,clk : in std_logic;
				soda_price : in std_logic_vector(3 downto 0);
				drop_soda,amt_err : out std_logic;
				hund_disp_n,tens_disp_n,ones_disp_n : out std_logic_vector(6 downto 0)
			);
end vending_machine_controller;

architecture Structural of vending_machine_controller is
	signal amt_dep_temp1,amt_dep_temp2 : std_logic_vector(11 downto 0);
begin

	coin_controller : entity work.coin_controller
		port map(Qp => Qp, Dp => Dp, Np => Np, soda_req => soda_req,
					reset_n => reset_n, clk => clk, soda_price => soda_price,
					drop_soda => drop_soda, amt_err => amt_err, amt_dep => amt_dep_temp1);
					
	amt_dep_temp2 <= bin_to_bcd(amt_dep_temp1);
		
	seven_segment_decoder : entity work.seven_segment_decoder
		port map(BCD => amt_dep_temp2, hund_disp_n => hund_disp_n,
					tens_disp_n => tens_disp_n, ones_disp_n => ones_disp_n);

end Structural;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:53:45 03/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Jon/Google Drive/Year 2 Semester 2/DSD 2/Lab4/Code/Usr_interaction_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Usr_interaction
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Usr_interaction_tb IS
END Usr_interaction_tb;
 
ARCHITECTURE behavior OF Usr_interaction_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Usr_interaction
    PORT(
         Qrcd_in : IN  std_logic;
         Drcd_in : IN  std_logic;
         Nrcd_in : IN  std_logic;
         Clk_in : IN  std_logic;
         Reset_n_in : IN  std_logic;
         Soda_req_in : IN  std_logic;
         Soda_price_in : IN  std_logic_vector(3 downto 0);
         Drop_soda_out : OUT  std_logic;
         Qrcd_out : OUT  std_logic;
         Drcd_out : OUT  std_logic;
         Nrcd_out : OUT  std_logic;
         Amt_err : OUT  std_logic;
         unused_anode : OUT  std_logic;
         hund_anode_out : OUT  std_logic;
         tens_anode_out : OUT  std_logic;
         ones_anode_out : OUT  std_logic;
         CAn_out : OUT  std_logic;
         CBn_out : OUT  std_logic;
         CCn_out : OUT  std_logic;
         CDn_out : OUT  std_logic;
         CEn_out : OUT  std_logic;
         CFn_out : OUT  std_logic;
         CGn_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Qrcd_in : std_logic := '0';
   signal Drcd_in : std_logic := '0';
   signal Nrcd_in : std_logic := '0';
   signal Clk_in : std_logic := '0';
   signal Reset_n_in : std_logic := '0';
   signal Soda_req_in : std_logic := '0';
   signal Soda_price_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Drop_soda_out : std_logic;
   signal Qrcd_out : std_logic;
   signal Drcd_out : std_logic;
   signal Nrcd_out : std_logic;
   signal Amt_err : std_logic;
   signal unused_anode : std_logic;
   signal hund_anode_out : std_logic;
   signal tens_anode_out : std_logic;
   signal ones_anode_out : std_logic;
   signal CAn_out : std_logic;
   signal CBn_out : std_logic;
   signal CCn_out : std_logic;
   signal CDn_out : std_logic;
   signal CEn_out : std_logic;
   signal CFn_out : std_logic;
   signal CGn_out : std_logic;

   -- Clock period definitions
   constant Clk_in_period : time := 10 ns;
	constant wait_period : time := 100 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Usr_interaction PORT MAP (
          Qrcd_in => Qrcd_in,
          Drcd_in => Drcd_in,
          Nrcd_in => Nrcd_in,
          Clk_in => Clk_in,
          Reset_n_in => Reset_n_in,
          Soda_req_in => Soda_req_in,
          Soda_price_in => Soda_price_in,
          Drop_soda_out => Drop_soda_out,
          Qrcd_out => Qrcd_out,
          Drcd_out => Drcd_out,
          Nrcd_out => Nrcd_out,
          Amt_err => Amt_err,
          unused_anode => unused_anode,
          hund_anode_out => hund_anode_out,
          tens_anode_out => tens_anode_out,
          ones_anode_out => ones_anode_out,
          CAn_out => CAn_out,
          CBn_out => CBn_out,
          CCn_out => CCn_out,
          CDn_out => CDn_out,
          CEn_out => CEn_out,
          CFn_out => CFn_out,
          CGn_out => CGn_out
        );

   -- Clock process definitions
   Clk_in_process :process
   begin
		Clk_in <= not Clk_in;
		wait for Clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Reset_n_in <= '0';
      wait for Clk_in_period*2;	
		Reset_n_in <= '1';
		
		wait for Clk_in_period;
		
		--test quarter
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period;
		
		--test dime
		Drcd_in <= '1';
		wait for Clk_in_period*2;
		Drcd_in <= '0';
		
		wait for wait_period;
		
		--test nickel
		Nrcd_in <= '1';
		wait for Clk_in_period*2;
		Nrcd_in <= '0';
		
		wait for wait_period*3;
		
		--BALANCE = 40
		--PRICE = 55
		--test not enough money
		Soda_price_in <= "0000";
		Soda_req_in <= '1';
		wait for Clk_in_period*2;
		Soda_req_in <= '0';
		
		wait for wait_period*3;
		
		Drcd_in <= '1';
		wait for Clk_in_period*2;
		Drcd_in <= '0';
		
		wait for wait_period;
		
		Nrcd_in <= '1';
		wait for Clk_in_period*2;
		Nrcd_in <= '0';
		
		wait for wait_period*3;
		
		--BALANCE = 55
		--PRICE = 55
		--test exactly enough money
		Soda_price_in <= "0000";
		Soda_req_in <= '1';
		wait for Clk_in_period*2;
		Soda_req_in <= '0';
		
		wait for wait_period*3;
		
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period;
		
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period;
		
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period*3;
		
		--BALANCE = 75
		--PRICE = 55
		--test too much money
		Soda_price_in <= "0000";
		Soda_req_in <= '1';
		wait for Clk_in_period*2;
		Soda_req_in <= '0';
		
		wait for wait_period;
		
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period;
		
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period;
		
		Qrcd_in <= '1';
		wait for Clk_in_period*2;
		Qrcd_in <= '0';
		
		wait for wait_period*3;
		
		Soda_price_in <= "0001";
		Soda_req_in <= '1';
		wait for Clk_in_period*2;
		Soda_req_in <= '0';
		
		wait for wait_period*3;
		Reset_n_in <= '0';

      wait;
   end process;

END;