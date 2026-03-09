library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_vm_add_sub is

end tb_vm_add_sub;

architecture Behavioral of tb_vm_add_sub is

    
    component vm_add_sub
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;
        start    : in  std_logic;
        A        : in  std_logic_vector(31 downto 0);
        B        : in  std_logic_vector(31 downto 0);
        subtract : in  std_logic;
        done     : out std_logic;
        result   : out std_logic_vector(31 downto 0)
    );
    end component;

    
    signal clk      : std_logic := '0';
    signal reset    : std_logic := '0';
    signal start    : std_logic := '0';
    signal A        : std_logic_vector(31 downto 0) := (others => '0');
    signal B        : std_logic_vector(31 downto 0) := (others => '0');
    signal subtract : std_logic := '0';
    signal done     : std_logic;
    signal result   : std_logic_vector(31 downto 0);

   
    constant CLK_PERIOD : time := 10 ns;

begin

    uut: vm_add_sub port map (
        clk      => clk,
        reset    => reset,
        start    => start,
        A        => A,
        B        => B,
        subtract => subtract,
        done     => done,
        result   => result
    );

    
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

   
    stim_proc: process
    begin
   
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 20 ns;

        
        A <= X"3F800000"; 
        B <= X"40000000";
        subtract <= '0'; 

        
        --A <= X"40600000";
        --B <= X"3F800000";
        --subtract <= '1'; -- Scadere
        

        
        --A <= X"3FC00000";
        --B <= X"BF000000";
        --subtract <= '0'; -- Adunare
        
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';

        wait until done = '1';
        wait for 20 ns;

        wait;
    end process;

end Behavioral;