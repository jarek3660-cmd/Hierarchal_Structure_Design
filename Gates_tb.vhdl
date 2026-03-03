----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2026 08:14:12 PM
-- Design Name: 
-- Module Name: Gates_tb - bench
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

entity Gates_tb is
--  Port ( );
end Gates_tb;

architecture bench of Gates_tb is
component Gates
Port(A, B: in STD_LOGIC; 
     G_out: out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal A_tb, B_tb: STD_LOGIC;
signal G_out_tb: STD_LOGIC_VECTOR(7 downto 0);

begin

uut: Gates port map(A => A_tb,
                    B => B_tb,
                    G_out => G_out_tb);
                    
stimulus : process

begin

A_tb <= '0'; B_tb <= '0'; wait for 100ns;
A_tb <= '0'; B_tb <= '1'; wait for 100ns;
A_tb <= '1'; B_tb <= '0'; wait for 100ns;
A_tb <= '1'; B_tb <= '1'; wait for 100ns;
wait;
end process;
end bench;
