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

