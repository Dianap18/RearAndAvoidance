library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pid_controller is
    port (
        clk      : in  std_logic;
        rst_conv : in  std_logic;
        rst_fp   : in  std_logic;
        start    : in  std_logic;
        pot_val  : in  std_logic_vector(11 downto 0);
        
        -- LED-uri 
        pwm_val  : out std_logic_vector(7 downto 0); 
        
        -- SERVO MOTOR
        servo_pwm_out : out std_logic; 
        
        done     : out std_logic
    );
end entity pid_controller;

architecture Behavioral of pid_controller is

    type secventa is (S_IDLE, S_I2F, S_PID, S_F2I, S_PWM, S_DONE);
    signal secv : secventa := S_IDLE;

    component pid_core
        generic ( KP_VALUE, KI_VALUE, KD_VALUE, TS_VALUE : STD_LOGIC_VECTOR(31 downto 0) );
        port ( clk, reset, start : in STD_LOGIC; setpoint_sp, process_pv : in STD_LOGIC_VECTOR(31 downto 0); control_output_u : out STD_LOGIC_VECTOR(31 downto 0); done : out STD_LOGIC );
    end component;
    
    component fp_converter 
        port ( clk, reset, start_i2f : in std_logic; in_int : in std_logic_vector(11 downto 0); out_fp : out std_logic_vector(31 downto 0); done_i2f : out std_logic; start_f2i : in std_logic; in_fp : in std_logic_vector(31 downto 0); out_int : out std_logic_vector(11 downto 0); done_f2i : out std_logic );
    end component;
    
    component conv_pwm_int
        generic (N : integer := 12);
        port ( clk, reset, start : in std_logic; in_val : in std_logic_vector(N-1 downto 0); pwm_val : out std_logic_vector(7 downto 0); gata : out std_logic );
    end component;

    component servo_pwm_gen
        port ( clk : in std_logic; val_in : in std_logic_vector(7 downto 0); servo_pin : out std_logic );
    end component;
    
    constant C_KP : STD_LOGIC_VECTOR(31 downto 0) := X"3F800000"; -- 1.0
    constant C_KI : STD_LOGIC_VECTOR(31 downto 0) := X"3E000000"; -- 0.125
    constant C_KD : STD_LOGIC_VECTOR(31 downto 0) := X"00000000"; -- 0.0
    constant C_TS : STD_LOGIC_VECTOR(31 downto 0) := X"3C23D70A"; -- 0.01
    constant C_SP : STD_LOGIC_VECTOR(31 downto 0) := X"45000000";

    signal pv_val_fp  : STD_LOGIC_VECTOR(31 downto 0);
    signal u_val_fp   : STD_LOGIC_VECTOR(31 downto 0);
    signal u_val_int  : STD_LOGIC_VECTOR(11 downto 0);
    
    signal pwm_internal : STD_LOGIC_VECTOR(7 downto 0); 
    
    signal start_i2f, done_i2f, start_f2i, done_f2i : STD_LOGIC := '0';
    signal start_pid, done_pid, start_pwm : STD_LOGIC := '0';
    

begin
    pwm_val <= pwm_internal;

    -- Generatorul de valoare (0-255)
    pwm_inst : conv_pwm_int
        generic map (N => 12)
        port map ( clk => clk, reset => rst_conv, start => start_pwm, in_val => u_val_int, 
                   pwm_val => pwm_internal,
                   gata => open );

    -- Generatorul SERVO 
    servo_inst : servo_pwm_gen
        port map (
            clk => clk,
            val_in => pwm_internal,   
            servo_pin => servo_pwm_out -- pe pinul extern
        );

    pid_inst : pid_core
        generic map ( KP_VALUE => C_KP, KI_VALUE => C_KI, KD_VALUE => C_KD, TS_VALUE => C_TS )
        port map ( clk => clk, reset => rst_fp, start => start_pid, setpoint_sp => C_SP, process_pv => pv_val_fp, control_output_u => u_val_fp, done => done_pid );

    conv_inst : fp_converter
        port map ( clk => clk, reset => rst_fp, start_i2f => start_i2f, in_int => pot_val, out_fp => pv_val_fp, done_i2f => done_i2f, start_f2i => start_f2i, in_fp => u_val_fp, out_int => u_val_int, done_f2i => done_f2i );
    
    process(clk, rst_fp)
    begin
        if rst_fp = '1' then
            secv <= S_IDLE; done <= '0';
        elsif rising_edge(clk) then
            start_i2f <= '0'; start_f2i <= '0'; start_pid <= '0'; start_pwm <= '0'; done <= '0';
            case secv is
                -- Asteptam comanda
                when S_IDLE => if start = '1' then start_i2f <= '1'; secv <= S_I2F; end if;
                -- Asteptam sa termine conversia
                when S_I2F  => if done_i2f = '1' then start_pid <= '1'; secv <= S_PID; end if;
                -- Asteptam sa termine PID-ul
                when S_PID  => if done_pid = '1' then start_f2i <= '1'; secv <= S_F2I; end if;
                -- Asteptam sa termine conversia inversa
                when S_F2I  => if done_f2i = '1' then start_pwm <= '1'; secv <= S_PWM; end if;
                -- Am termina scalarea
                when S_PWM  => secv <= S_DONE;
                -- Gata
                when S_DONE => done <= '1'; if start = '0' then secv <= S_IDLE; end if;
            end case;
        end if;
    end process;
end architecture Behavioral;