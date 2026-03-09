----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2026 08:55:09 PM
-- Design Name: 
-- Module Name: topModule_tb - Behavioral
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

entity topModule_tb is
--  Port ( );
end topModule_tb;

architecture Behavioral of topModule_tb is
component topModule Port(A,B : in STD_LOGIC; 
                         Mux_out : out STD_LOGIC; 
                         C_7SD : out STD_LOGIC_VECTOR(7 downto 0);
                         Selector : in STD_LOGIC_VECTOR(2 downto 0);
                         A_7SD : out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal A_tb, B_tb : STD_LOGIC;
signal Mux_out_tb : STD_LOGIC;                         
signal Selector_tb : STD_LOGIC_VECTOR(2 downto 0);
signal C_7SD_tb, A_7SD_tb : STD_LOGIC_VECTOR(7 downto 0);
           
begin

uut: topModule port map (A => A_tb, B=> B_tb,
                            Mux_out => Mux_out_tb, Selector => Selector_tb,
                            C_7SD => C_7SD_tb, A_7SD=> A_7SD_tb);
stimulus: process
begin
    Selector_tb <= "000"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "001"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "010"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "011"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "100"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "101"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "110"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "111"; A_tb <= '0'; B_tb <= '0'; wait for 100ns;
    Selector_tb <= "000"; A_tb <= '0'; B_tb <= '1'; wait for 100ns;
    Selector_tb <= "001"; A_tb <= '0'; B_tb <= '1'; wait for 100ns;
    wait;
end process;                            


end Behavioral;
