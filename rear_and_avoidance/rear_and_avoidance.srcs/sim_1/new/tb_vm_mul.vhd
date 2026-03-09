library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_vm_mul is

end tb_vm_mul;

architecture Behavioral of tb_vm_mul is

    component vm_mul
    port(
        clk     : in  std_logic;
        start   : in  std_logic;
        A       : in  std_logic_vector(31 downto 0);
        B       : in  std_logic_vector(31 downto 0);
        Z       : out std_logic_vector(31 downto 0);
        done    : out std_logic
    );
    end component;

    -- Semnale interne
    signal clk   : std_logic := '0';
    signal start : std_logic := '0';
    signal A     : std_logic_vector(31 downto 0) := (others => '0');
    signal B     : std_logic_vector(31 downto 0) := (others => '0');
    signal Z     : std_logic_vector(31 downto 0);
    signal done  : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    uut: vm_mul port map (
        clk => clk, start => start,
        A => A, B => B,
        Z => Z, done => done
    );

    clk_process : process
    begin
        clk <= '0'; wait for CLK_PERIOD/2;
        clk <= '1'; wait for CLK_PERIOD/2;
    end process;

    stim_proc: process
    begin
        wait for 100 ns;

        -- TEST 1: 2.0 * 3.0 = 6.0
        -- 2.0 = 0x40000000
        -- 3.0 = 0x40400000
        -- Expected: 6.0 = 0x40C00000
        --A <= X"40000000"; 
        --B <= X"40400000";
        --start <= '1'; wait for CLK_PERIOD; start <= '0';
        --wait until done = '1';
        --wait for 20 ns;

        -- TEST 2: -2.0 * 3.0 = -6.0
        -- -2.0 = 0xC0000000
        -- Expected: -6.0 = 0xC0C00000
        A <= X"C0000000"; 
        B <= X"40400000";
        start <= '1'; wait for CLK_PERIOD; start <= '0';
        wait until done = '1';
        wait for 20 ns;

        -- TEST 3: 0.5 * 0.5 = 0.25
        -- 0.5 = 0x3F000000
        -- Expected: 0.25 = 0x3E800000
        A <= X"3F000000"; 
        B <= X"3F000000";
        start <= '1'; wait for CLK_PERIOD; start <= '0';
        wait until done = '1';
        wait for 20 ns;

        -- TEST 4: 2.5 * 0.0 = 0.0
        --A <= X"40200000"; 
        --B <= X"00000000";
        --start <= '1'; wait for CLK_PERIOD; start <= '0';
        --wait until done = '1';
        --wait for 20 ns;

        wait; -- Stop
    end process;

end Behavioral;