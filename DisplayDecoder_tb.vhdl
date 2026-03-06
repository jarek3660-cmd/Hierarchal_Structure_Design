----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2026 05:13:38 PM
-- Design Name: 
-- Module Name: DisplayDecoder_tb - Behavioral
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

entity DisplayDecoder_tb is
end DisplayDecoder_tb;

architecture Behavioral of DisplayDecoder_tb is
component DisplayDecoder
Port( DISP_in : in STD_LOGIC;
     C_7SD, A_7SD : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal DISP_in_tb : STD_LOGIC;
signal C_7SD_tb, A_7SD_tb :STD_LOGIC_VECTOR(7 downto 0);
begin
uut: DisplayDecoder port map(DISP_in => DISP_in_tb,
                             C_7SD=> C_7SD_tb,
                             A_7SD=> A_7SD_tb);
stimulus:process
begin
    DISP_in_tb <= '0'; wait for 100ns;
    DISP_in_tb <= '1'; wait for 100ns;
    wait;
end process;
end Behavioral;
