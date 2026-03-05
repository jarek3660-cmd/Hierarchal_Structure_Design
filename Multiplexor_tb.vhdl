----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2026 08:13:55 PM
-- Design Name: 
-- Module Name: Multiplexor - Behavioral
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

entity Multiplexor is
    Port ( G_out : in STD_LOGIC_VECTOR (7 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Mux_out : out STD_LOGIC);
end Multiplexor;

architecture Behavioral of Multiplexor is          
begin
        Mux_out <= G_out(0) when (Sel = "000") else
               G_out(1) when (Sel = "001") else
               G_out(2) when (Sel = "010") else
               G_out(3) when (Sel = "011") else
               G_out(4) when (Sel = "100") else
               G_out(5) when (Sel = "101") else
               G_out(6) when (Sel = "110") else
               G_out(7) when (Sel = "111") else
               G_out(0);
end Behavioral;
