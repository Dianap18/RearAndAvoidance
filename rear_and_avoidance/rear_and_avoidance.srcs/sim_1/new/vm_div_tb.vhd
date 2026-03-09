library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_vm_div is

end tb_vm_div;

architecture Behavioral of tb_vm_div is

    component vm_div
    port(
        clk     : in  std_logic;
        start   : in  std_logic;
        A       : in  std_logic_vector(31 downto 0);
        B       : in  std_logic_vector(31 downto 0);
        Z       : out std_logic_vector(31 downto 0);
        done    : out std_logic
    );
    end component;

    signal clk   : std_logic := '0';
    signal start : std_logic := '0';
    signal A     : std_logic_vector(31 downto 0) := (others => '0');
    signal B     : std_logic_vector(31 downto 0) := (others => '0');
    signal Z     : std_logic_vector(31 downto 0);
    signal done  : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    uut: vm_div port map (
        clk => clk, 
        start => start,
        A => A, 
        B => B,
        Z => Z, 
        done => done
    );

    clk_process : process
    begin
        clk <= '0'; wait for CLK_PERIOD/2;
        clk <= '1'; wait for CLK_PERIOD/2;
    end process;

    stim_proc: process
    begin
        
        wait for 100 ns;

        -- TEST 1: 4.0 / 2.0 = 2.0
        -- 4.0 = 0x40800000
        -- 2.0 = 0x40000000
        -- Expected: 2.0 = 0x40000000
        A <= X"40800000"; 
        B <= X"40000000";
        --start <= '1'; wait for CLK_PERIOD; start <= '0';
        --wait until done = '1';
        --wait for 20 ns;

        -- TEST 2: 15.0 / 3.0 = 5.0
        -- 15.0 = 0x41700000
        -- 3.0  = 0x40400000
        -- Expected: 5.0 = 0x40A00000
        A <= X"41700000"; 
        B <= X"40400000";
        --start <= '1'; wait for CLK_PERIOD; start <= '0';
        --wait until done = '1';
        --wait for 20 ns;

        -- TEST 3: -10.0 / 2.5 = -4.0 (Testare Semn)
        -- -10.0 = 0xC1200000
        -- 2.5   = 0x40200000
        -- Expected: -4.0 = 0xC0800000
        --A <= X"C1200000"; 
        --B <= X"40200000";
        --start <= '1'; wait for CLK_PERIOD; start <= '0';
        --wait until done = '1';
        --wait for 20 ns;
        
        -- TEST 4: 3.0 / 2.0 = 1.5 (Testare Fracție)
        -- 3.0 = 0x40400000
        -- 2.0 = 0x40000000
        -- Expected: 1.5 = 0x3FC00000
        A <= X"40400000"; 
        B <= X"40000000";
        --start <= '1'; wait for CLK_PERIOD; start <= '0';
        --wait until done = '1';
        --wait for 20 ns;

        -- TEST 5: 1.0 / 0.0 = Infinity (Testare Zero)
        -- 1.0 = 0x3F800000
        -- 0.0 = 0x00000000
        -- Expected: Infinity = 0x7F800000
        A <= X"3F800000"; 
        B <= X"00000000";
        start <= '1'; wait for CLK_PERIOD; start <= '0';
        wait until done = '1';
        wait for 20 ns;

        wait; 
    end process;

end Behavioral;