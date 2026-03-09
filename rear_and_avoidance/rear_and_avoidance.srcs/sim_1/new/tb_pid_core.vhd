library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_pid_core is

end tb_pid_core;

architecture Behavioral of tb_pid_core is

    component pid_core
    generic (
        KP_VALUE : STD_LOGIC_VECTOR(31 downto 0); 
        KI_VALUE : STD_LOGIC_VECTOR(31 downto 0);
        KD_VALUE : STD_LOGIC_VECTOR(31 downto 0);
        TS_VALUE : STD_LOGIC_VECTOR(31 downto 0)
    );
    port (
        clk              : in  STD_LOGIC;
        reset            : in  STD_LOGIC;
        start            : in  STD_LOGIC;
        setpoint_sp      : in  STD_LOGIC_VECTOR(31 downto 0); 
        process_pv       : in  STD_LOGIC_VECTOR(31 downto 0); 
        control_output_u : out STD_LOGIC_VECTOR(31 downto 0); 
        done             : out STD_LOGIC
    );
    end component;

    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';
    signal start : std_logic := '0';
    
    signal setpoint_sp      : std_logic_vector(31 downto 0) := (others => '0');
    signal process_pv       : std_logic_vector(31 downto 0) := (others => '0');
    signal control_output_u : std_logic_vector(31 downto 0);
    signal done             : std_logic;

    constant CLK_PERIOD : time := 10 ns;

    -- Kp = 2.0   -> 0x40000000
    -- Ki = 0.5   -> 0x3F000000
    -- Kd = 0.1   -> 0x3DCCCCCD
    -- Ts = 0.1s  -> 0x3DCCCCCD
    
    constant TEST_KP : std_logic_vector(31 downto 0) := X"40000000"; -- 2.0
    constant TEST_KI : std_logic_vector(31 downto 0) := X"3F000000"; -- 0.5
    constant TEST_KD : std_logic_vector(31 downto 0) := X"3DCCCCCD"; -- 0.1
    constant TEST_TS : std_logic_vector(31 downto 0) := X"3DCCCCCD"; -- 0.1

begin

    uut: pid_core 
    generic map (
        KP_VALUE => TEST_KP,
        KI_VALUE => TEST_KI,
        KD_VALUE => TEST_KD,
        TS_VALUE => TEST_TS
    )
    port map (
        clk => clk,
        reset => reset,
        start => start,
        setpoint_sp => setpoint_sp,
        process_pv => process_pv,
        control_output_u => control_output_u,
        done => done
    );

    clk_process : process
    begin
        clk <= '0'; wait for CLK_PERIOD/2;
        clk <= '1'; wait for CLK_PERIOD/2;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        start <= '0';
        wait for 100 ns;
        reset <= '0';
        wait for 20 ns;

        -- Setpoint = 10.0 (0x41200000)
        -- PV       = 0.0  (0x00000000)
        -- Eroare   = 10.0
        -- Asteptari:
        -- P = 2.0 * 10.0 = 20.0
        -- I = (0.5 * 10.0) * 0.1 = 0.5 (Suma anterioara 0)
        -- D = (0.1 * (10.0 - 0.0)) / 0.1 = 10.0
        -- U = 20.0 + 0.5 + 10.0 = 30.5
        
        setpoint_sp <= X"41200000"; -- 10.0
        process_pv  <= X"00000000"; -- 0.0
        
        start <= '1';
        wait for CLK_PERIOD; 
        start <= '0';
        
        wait until done = '1';
        wait for 50 ns; 

        -- Setpoint = 10.0 (0x41200000)
        -- PV       = 8.0  (0x41000000)
        -- Eroare   = 2.0
        -- Eroare_Prev = 10.0
        -- Diff     = 2.0 - 10.0 = -8.0
        
        -- Asteptari:
        -- P = 2.0 * 2.0 = 4.0
        -- I_add = (0.5 * 2.0) * 0.1 = 0.1 -> I_Total = 0.5 + 0.1 = 0.6
        -- D = (0.1 * -8.0) / 0.1 = -8.0
        -- U = 4.0 + 0.6 - 8.0 = -3.4 
        
        process_pv <= X"41000000"; -- 8.0
        
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        
        wait until done = '1';
        wait for 50 ns;

        -- PV = 10.0
        -- Eroare = 0.0
        -- Eroare_Prev = 2.0
        -- Diff = -2.0
        
        -- Asteptari:
        -- P = 0
        -- I = I_Total anterior (0.6) + 0 = 0.6
        -- D = (0.1 * -2.0) / 0.1 = -2.0
        -- U = 0 + 0.6 - 2.0 = -1.4
        
        process_pv <= X"41200000"; -- 10.0
        
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        
        wait until done = '1';
        wait for 50 ns;

        wait;
    end process;

end Behavioral;