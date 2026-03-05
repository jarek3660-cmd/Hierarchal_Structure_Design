architecture bench of Multiplexer_TB is
component Multiplexer -- Declare the component we'll
Port ( Sel: in STD_LOGIC _VECTOR (2 downto 0); -- be testing
G_out: in STD_LOGIC_VECTOR (7 downto 0);
MUX_out : out STD_LOGIC);
end component;
signal Selector_tb : STD_LOGIC; -- Declare our internal test bench
signal G_out _tb : STD_LOGIC_VECTOR (7 downto 0); -- signals
signal Mux_out _tb : STD_LOGIC
begin
uut: Multiplexer port map (Sel => Selector_tb, -- Map our input/output
G_out => G_out _tb , -- pins to our internal test bench
MUX_out => MUX_out_tb); -- "unit under test" (uut).
stimulus: process -- The process block will execute each line sequentially
begin -- Apply our test values, waiting for 100 ns before moving on
Sel_tb <= “000”; G_out _tb <= “00000001”; wait for 100 ns;
Sel_tb <= “001”; G_out _tb <= “00000010”; wait for 100 ns;
<You need to fill in the missing test cases>
Sel_tb <= “111”; G_out _tb <= “10000000”; wait for 100 ns;
wait;
end process;
end bench;
