----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2026 04:06:00 PM
-- Design Name: 
-- Module Name: topModule - Behavioral
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

entity topModule is
    Port ( A,B : in STD_LOGIC;
           Selector : in STD_LOGIC_VECTOR (2 downto 0);
           Mux_out : out STD_LOGIC;
           C_7SD,A_7SD : out STD_LOGIC_VECTOR (7 downto 0));
end topModule;

architecture Behavioral of topModule is
component Gates
    Port(A, B: in STD_LOGIC;
                    G_out: out STD_LOGIC_VECTOR(7 downto 0));                
end component;

component Multiplexor 
Port(Mux_in: in STD_LOGIC_VECTOR (7 downto 0);
     Sel : in STD_LOGIC_VECTOR  (2 downto 0);
     Mux_out: out STD_LOGIC);
end component;

component DisplayDecoder
Port(DISP_in : in STD_LOGIC;
      C_7SD, A_7SD : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal S1 : STD_LOGIC_VECTOR(7 downto 0);
signal S2 : STD_LOGIC; 
begin

G1 : Gates port map(A=> A, B=>B, G_out => S1);
M1 : Multiplexor port map(Mux_in => S1, Sel => Selector, Mux_out => S2);
Mux_out <= S2;
DD1 : DisplayDecoder port map(DISP_in => S2, C_7SD => C_7SD, A_7SD => A_7SD);

end Behavioral; 
