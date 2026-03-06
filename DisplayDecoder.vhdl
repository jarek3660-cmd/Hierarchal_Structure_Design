----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2026 05:02:45 PM
-- Design Name: 
-- Module Name: DisplayDecoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DisplayDecoder is
    Port ( DISP_in : in STD_LOGIC;
           C_7SD, A_7SD : out STD_LOGIC_VECTOR (7 downto 0));
end DisplayDecoder;

architecture Behavioral of DisplayDecoder is
begin
process(DISP_in)
begin
    if DISP_in = '1' then  
        C_7SD <= "10010011"; 
    else
        C_7SD <= "11100011"; 
    end if; 
end process;  

A_7SD <= "11111110";
end Behavioral;
