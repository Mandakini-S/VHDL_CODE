library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop_tb is
end t_flipflop_tb;
architecture behaviour of t_flipflop_tb is
    component Upcounter3bit
        port(
            CLK, CLR: in std_logic;
            Q: out std_logic_vector(2 downto 0)
        );
    end component;

    signal CLK, CLR: std_logic := '0';
    signal Q: std_logic_vector(2 downto 0);

begin
    -- Instantiate Upcounter3bit component
    counter1: Upcounter3bit port map(CLK => CLK, CLR => CLR, Q => Q);

    -- clock process
    process
    begin
        CLK <= '0';
        wait for 30 ns;

        CLK <= '1';
        wait for 30 ns;
    end process;

    -- stimulus period
    process
    begin
        -- rest
        CLR <= '1';
        wait for 10 ns;
        CLR <= '0';
        wait for 80 ns;
    end process;

end behaviour;

