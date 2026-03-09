library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_fp_converter is

end tb_fp_converter;

architecture Behavioral of tb_fp_converter is

    component fp_converter
    port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        
        -- I2F Ports
        start_i2f : in  std_logic;
        in_int    : in  std_logic_vector(11 downto 0);
        out_fp    : out std_logic_vector(31 downto 0);
        done_i2f  : out std_logic;
        
        -- F2I Ports
        start_f2i : in  std_logic;
        in_fp     : in  std_logic_vector(31 downto 0);
        out_int   : out std_logic_vector(11 downto 0);
        done_f2i  : out std_logic
    );
    end component;

    signal clk       : std_logic := '0';
    signal reset     : std_logic := '0';
    
    -- Semnale I2F
    signal start_i2f : std_logic := '0';
    signal in_int    : std_logic_vector(11 downto 0) := (others => '0');
    signal out_fp    : std_logic_vector(31 downto 0) := (others => '0'); 
    signal done_i2f  : std_logic := '0'; 

    -- Semnale F2I
    signal start_f2i : std_logic := '0';
    signal in_fp     : std_logic_vector(31 downto 0) := (others => '0');
    signal out_int   : std_logic_vector(11 downto 0) := (others => '0'); 
    signal done_f2i  : std_logic := '0'; 

    constant CLK_PERIOD : time := 10 ns;

begin

    uut: fp_converter port map (
        clk => clk, reset => reset,
        start_i2f => start_i2f, in_int => in_int, out_fp => out_fp, done_i2f => done_i2f,
        start_f2i => start_f2i, in_fp => in_fp, out_int => out_int, done_f2i => done_f2i
    );

    clk_process : process
    begin
        clk <= '0'; wait for CLK_PERIOD/2;
        clk <= '1'; wait for CLK_PERIOD/2;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 20 ns;

        -- 2048 dec = 0x800 hex
        -- Asteptam Float: 2048.0 = 0x45000000
        in_int <= X"800"; 
        start_i2f <= '1';
        wait for CLK_PERIOD;
        start_i2f <= '0';
        
        wait until done_i2f = '1';
        wait for 20 ns;

        --in_int <= X"000";
        --start_i2f <= '1';
        --wait for CLK_PERIOD;
        --start_i2f <= '0';
        
        --wait until done_i2f = '1';
        --wait for 20 ns;

        -- 4095.0 = 0x457FF000
        --in_int <= X"FFF";
        --start_i2f <= '1';
        --wait for CLK_PERIOD;
        --start_i2f <= '0';
        
        --wait until done_i2f = '1';
        --wait for 20 ns;

        -- 1000.0 inapoi in int
        -- 1000.0 = 0x447A0000
        -- Asteptam Int: 1000 = 0x3E8
        --in_fp <= X"447A0000"; 
        --start_f2i <= '1';
        --wait for CLK_PERIOD;
        --start_f2i <= '0';
        
        --wait until done_f2i = '1';
        --wait for 20 ns;

        -- Convertim 5000.0
        -- 5000.0 = 0x459C4000
        -- Asteptam Int: 4095 (0xFFF) 
        --in_fp <= X"459C4000";
        --start_f2i <= '1';
        --wait for CLK_PERIOD;
        --start_f2i <= '0';
        
        --wait until done_f2i = '1';
        --wait for 20 ns;

        -- Convertim -100.0
        -- -100.0 = 0xC2C80000
        -- Asteptam Int: 0 (0x000)
        --in_fp <= X"C2C80000";
        --start_f2i <= '1';
        --wait for CLK_PERIOD;
        --start_f2i <= '0';
        
        --wait until done_f2i = '1';
        --wait for 20 ns;
        
        -- Convertim 10.75
        -- 10.75 = 0x412C0000
        -- Asteptam Int: 10 (0x00A)
        in_fp <= X"412C0000";
        start_f2i <= '1';
        wait for CLK_PERIOD;
        start_f2i <= '0';
        
        --wait until done_f2i = '1';

        wait;
    end process;

end Behavioral;