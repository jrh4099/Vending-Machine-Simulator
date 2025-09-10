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

