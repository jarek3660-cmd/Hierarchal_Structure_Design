library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor_tb is
--  Port ( );
end Multiplexor_tb;


architecture bench of Multiplexor_tb is
component Multiplexor
Port (Sel: in STD_LOGIC_VECTOR (2 downto 0); -- be testing
      G_out: in STD_LOGIC_VECTOR (7 downto 0);
      MUX_out : out STD_LOGIC);
end component;

signal Sel_tb : STD_LOGIC_VECTOR(2 downto 0); -- Declare our internal test bench
signal G_out_tb : STD_LOGIC_VECTOR (7 downto 0); -- signals
signal Mux_out_tb : STD_LOGIC;
begin

uut: Multiplexor port map (Sel => Sel_tb, -- Map our input/output
                           G_out => G_out_tb , -- pins to our internal test bench
                           MUX_out => MUX_out_tb); -- "unit under test" (uut).
stimulus: process -- The process block will execute each line sequentially
begin -- Apply our test values, waiting for 100 ns before moving on
    Sel_tb <= "000"; G_out_tb <= "00000001"; wait for 100 ns;
    Sel_tb <= "001"; G_out_tb <= "00000010"; wait for 100 ns;
    Sel_tb <= "010"; G_out_tb <= "00000100"; wait for 100 ns;
    Sel_tb <= "011"; G_out_tb <= "00001000"; wait for 100 ns;
    Sel_tb <= "100"; G_out_tb <= "00010000"; wait for 100 ns;
    Sel_tb <= "101"; G_out_tb <= "00100000"; wait for 100 ns;
    Sel_tb <= "110"; G_out_tb <= "01000000"; wait for 100 ns;
    Sel_tb <= "111"; G_out_tb <= "10000000"; wait for 100 ns;

wait;
end process;
end bench;
