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