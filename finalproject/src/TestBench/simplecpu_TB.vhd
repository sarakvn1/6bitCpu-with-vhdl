library ieee;
use ieee.NUMERIC_STD.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

	-- Add your library and packages declaration here ...

entity simplecpu_tb is
end simplecpu_tb;

architecture TB_ARCHITECTURE of simplecpu_tb is
	-- Component declaration of the tested unit
	component simplecpu
	port(
		reset : in STD_LOGIC;
		clk : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR(6 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal reset : STD_LOGIC;
	signal clk : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC_VECTOR(6 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : simplecpu
		port map (
			reset => reset,
			clk => clk,
			output => output
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_simplecpu of simplecpu_tb is
	for TB_ARCHITECTURE
		for UUT : simplecpu
			use entity work.simplecpu(simplecpu);
		end for;
	end for;
end TESTBENCH_FOR_simplecpu;

