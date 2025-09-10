--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:19:05 03/21/2018
-- Design Name:   
-- Module Name:   D:/Jonathan Hubbard/DSD2/Lab4/Code/vending_machine_controller_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vending_machine_controller
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
 
ENTITY vending_machine_controller_tb IS
END vending_machine_controller_tb;
 
ARCHITECTURE behavior OF vending_machine_controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vending_machine_controller
    PORT(
         Qp : IN  std_logic;
         Dp : IN  std_logic;
         Np : IN  std_logic;
         soda_req : IN  std_logic;
         reset_n : IN  std_logic;
         clk : IN  std_logic;
         soda_price : IN  std_logic_vector(3 downto 0);
         drop_soda : OUT  std_logic;
         amt_err : OUT  std_logic;
         hund_disp_n : OUT  std_logic_vector(6 downto 0);
         tens_disp_n : OUT  std_logic_vector(6 downto 0);
         ones_disp_n : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Qp : std_logic := '0';
   signal Dp : std_logic := '0';
   signal Np : std_logic := '0';
   signal soda_req : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal clk : std_logic := '0';
   signal soda_price : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal drop_soda : std_logic;
   signal amt_err : std_logic;
   signal hund_disp_n : std_logic_vector(6 downto 0);
   signal tens_disp_n : std_logic_vector(6 downto 0);
   signal ones_disp_n : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vending_machine_controller PORT MAP (
          Qp => Qp,
          Dp => Dp,
          Np => Np,
          soda_req => soda_req,
          reset_n => reset_n,
          clk => clk,
          soda_price => soda_price,
          drop_soda => drop_soda,
          amt_err => amt_err,
          hund_disp_n => hund_disp_n,
          tens_disp_n => tens_disp_n,
          ones_disp_n => ones_disp_n
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= not Clk;
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset_n <= '0';
      wait for clk_period*2;	
		reset_n <= '1';
		
		--test quarter
		Qp <= '1';
		wait for 10 ns;
		Qp <= '0';
		
		wait for clk_period;
		
		--test dime
		Dp <= '1';
		wait for 10 ns;
		Dp <= '0';
		
		wait for clk_period;
		
		--test nickel
		Np <= '1';
		wait for 10 ns;
		Np <= '0';
		
		wait for clk_period*3;
		
		--BALANCE = 40
		--PRICE = 55
		--test not enough money
		soda_price <= "0000";
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		Dp <= '1';
		wait for 10 ns;
		Dp <= '0';
		
		wait for clk_period;
		
		Np <= '1';
		wait for 10 ns;
		Np <= '0';
		
		wait for clk_period*3;
		
		--BALANCE = 55
		--PRICE = 55
		--test exactly enough money
		soda_price <= "0000";
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		Qp <= '1';
		wait for 10 ns;
		Qp <= '0';
		
		wait for clk_period;
		
		Qp <= '1';
		wait for 10 ns;
		Qp <= '0';
		
		wait for clk_period;
		
		Qp <= '1';
		wait for 10 ns;
		Qp <= '0';
		
		wait for clk_period*3;
		
		--BALANCE = 75
		--PRICE = 55
		--test too much money
		soda_price <= "0000";
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		soda_req <= '1';
		wait for 10 ns;
		soda_req <= '0';
		
		wait for clk_period*3;
		
		reset_n <= '0';

      wait;
   end process;

END;
