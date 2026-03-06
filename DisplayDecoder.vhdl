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
--  Port ( );
end DisplayDecoder_tb;
Port( Mux_out : in STD_LOGIC;
     C_7SD, A_7SD : out STD_LOGIC_VECTOR (7 downto 0));
architecture Behavioral of DisplayDecoder_tb is
component DisplayDecoder

end component;
begin


end Behavioral;
