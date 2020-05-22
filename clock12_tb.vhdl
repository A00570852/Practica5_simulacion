library ieee;
use ieee.std_logic_1164.all;

entity clock12_tb is
end entity;

architecture behav of clock12_tb is
  component clock12 is
    port (CLK: in std_logic;
          CLR: in std_logic;
          segundos:  out std_logic_vector(7 downto 0);
          minutos:   out std_logic_vector(7 downto 0);
          horas:     out std_logic_vector(7 downto 0));
  end component;

  signal sCLK: std_logic;
  signal sCLR: std_logic;
  signal sSeg: std_logic_vector (7 downto 0);
  signal sMin: std_logic_vector (7 downto 0);
  signal sHrs: std_logic_vector (7 downto 0);

  begin
    UUT: clock12 port map (sCLK, sCLR, sSeg, sMin, sHrs);

    process
      begin
        sClK <= '1';
        wait for 30 ns;
        sCLK <= '0';
        wait for 30 ns;
    end process;

    sCLR <= '0';

end behav;
