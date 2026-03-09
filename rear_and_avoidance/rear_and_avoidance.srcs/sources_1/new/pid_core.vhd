library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pid_core is
    generic (
        -- primite din top
        KP_VALUE : STD_LOGIC_VECTOR(31 downto 0); 
        KI_VALUE : STD_LOGIC_VECTOR(31 downto 0);
        KD_VALUE : STD_LOGIC_VECTOR(31 downto 0);
        TS_VALUE : STD_LOGIC_VECTOR(31 downto 0)
    );
    port (
        clk              : in  STD_LOGIC;
        reset            : in  STD_LOGIC;
        start            : in  STD_LOGIC;
        setpoint_sp      : in  STD_LOGIC_VECTOR(31 downto 0); -- val dorita
        process_pv       : in  STD_LOGIC_VECTOR(31 downto 0); -- val curenta
        
        control_output_u : out STD_LOGIC_VECTOR(31 downto 0); 
        done             : out STD_LOGIC
    );
end pid_core;

architecture Behavioral of pid_core is

    
    component vm_add_sub is
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;
        start    : in  std_logic;
        subtract : in  std_logic;
        A        : in  std_logic_vector(31 downto 0);
        B        : in  std_logic_vector(31 downto 0);
        done     : out std_logic;
        result   : out std_logic_vector(31 downto 0)
    );
    end component;

    
    component vm_mul is
    port (
        clk   : in  STD_LOGIC;
        start : in  STD_LOGIC;
        A     : in  STD_LOGIC_VECTOR(31 downto 0);
        B     : in  STD_LOGIC_VECTOR(31 downto 0);
        Z     : out STD_LOGIC_VECTOR(31 downto 0);
        done  : out STD_LOGIC
    );
    end component;
    
    component vm_div is
    port (
        clk   : in  STD_LOGIC;
        start : in  STD_LOGIC;
        A     : in  STD_LOGIC_VECTOR(31 downto 0); -- Numarator
        B     : in  STD_LOGIC_VECTOR(31 downto 0); -- Numitor
        Z     : out STD_LOGIC_VECTOR(31 downto 0); -- Catul
        done  : out STD_LOGIC
    );
    end component;
    
    
    type STATE_TYPE is (
        IDLE, 
        CALC_ERROR,      -- e = SP - PV
        
        CALC_P,          -- P = Kp * e
        
        CALC_I_PART1,    -- Temp = Ki * e
        CALC_I_PART2,    -- I_rate = Temp * Ts 
        CALC_I_ADD,      -- I_sum = I_sum + I_rate
        
        CALC_D_DIFF,     -- Diff = e[n] - e[n-1]
        CALC_D_MUL,      -- Temp_D = Kd * Diff
        CALC_D_DIV,      -- D = Temp_D / Ts 
        
        CALC_U_ADD1,     -- Sum1 = P + I
        CALC_U_ADD2,     -- U = Sum1 + D
        
        UPDATE_ERROR,    -- e[n-1] = e[n]
        FINISHED
    );
    signal state : STATE_TYPE := IDLE;

   
    signal error_n      : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal error_n_1    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal integral_sum : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    signal fp_A, fp_B     : STD_LOGIC_VECTOR(31 downto 0);
    signal fp_sub         : STD_LOGIC := '0';
    
    signal fp_res_add     : STD_LOGIC_VECTOR(31 downto 0);
    signal fp_res_mul     : STD_LOGIC_VECTOR(31 downto 0);
    signal fp_res_div     : STD_LOGIC_VECTOR(31 downto 0);
    
    signal start_add, start_mul, start_div : STD_LOGIC := '0';
    signal done_add, done_mul, done_div    : STD_LOGIC := '0';
    
    signal term_P, term_I, term_D : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal temp_val_i             : STD_LOGIC_VECTOR(31 downto 0) := (others => '0'); -- Ki*e
    signal temp_val_d             : STD_LOGIC_VECTOR(31 downto 0) := (others => '0'); -- Kd*diff

begin

    ADD_UNIT : vm_add_sub
        port map (
            clk => clk, reset => reset, start => start_add, subtract => fp_sub,
            A => fp_A, B => fp_B, done => done_add, result => fp_res_add
        );
                  
    MUL_UNIT : vm_mul
        port map (
            clk => clk, start => start_mul,
            A => fp_A, B => fp_B, Z => fp_res_mul, done => done_mul
        );

    DIV_UNIT : vm_div
        port map (
            clk => clk, start => start_div,
            A => fp_A, B => fp_B, Z => fp_res_div, done => done_div
        );

    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            integral_sum <= (others => '0');
            error_n_1    <= (others => '0');
            done         <= '0';
            control_output_u <= (others => '0');
        elsif rising_edge(clk) then
            start_add <= '0';
            start_mul <= '0';
            start_div <= '0';
            done      <= '0';
            
            case state is
                when IDLE =>
                    if start = '1' then
                        state <= CALC_ERROR;
                    end if;
                    
                -- e[n] = SP - PV
                when CALC_ERROR =>
                    fp_A <= setpoint_sp;
                    fp_B <= process_pv;
                    fp_sub <= '1'; -- Scadere
                    start_add <= '1';
                    
                    if done_add = '1' then
                        error_n <= fp_res_add;
                        state <= CALC_P;
                    end if;

                -- P: P = Kp * e[n]
                when CALC_P =>
                    fp_A <= KP_VALUE;
                    fp_B <= error_n;
                    start_mul <= '1';
                    
                    if done_mul = '1' then
                        term_P <= fp_res_mul;
                        state <= CALC_I_PART1;
                    end if;

                -- I (Pas 1): Temp = Ki * e[n]
                when CALC_I_PART1 =>
                    fp_A <= KI_VALUE;
                    fp_B <= error_n;
                    start_mul <= '1';
                    
                    if done_mul = '1' then
                        temp_val_i <= fp_res_mul; -- rezultatul intermediar
                        state <= CALC_I_PART2;
                    end if;

                -- I (Pas 2): Rate = Temp * Ts
                when CALC_I_PART2 =>
                    fp_A <= temp_val_i;
                    fp_B <= TS_VALUE;
                    start_mul <= '1';
                    
                    if done_mul = '1' then
                        temp_val_i <= fp_res_mul; 
                        state <= CALC_I_ADD;
                    end if;

                -- I (Pas 3): Sum = Sum + Rate
                when CALC_I_ADD =>
                    fp_A <= integral_sum;
                    fp_B <= temp_val_i; 
                    fp_sub <= '0'; 
                    start_add <= '1';
                    
                    if done_add = '1' then
                        integral_sum <= fp_res_add;
                        term_I <= fp_res_add;
                        state <= CALC_D_DIFF;
                    end if;

                -- D (Pas 1): Diff = e[n] - e[n-1]
                when CALC_D_DIFF =>
                    fp_A <= error_n;
                    fp_B <= error_n_1;
                    fp_sub <= '1';
                    start_add <= '1';
                    
                    if done_add = '1' then
                        temp_val_d <= fp_res_add;
                        state <= CALC_D_MUL;
                    end if;
                    
                -- D (Pas 2): Temp = Kd * Diff
                when CALC_D_MUL =>
                    fp_A <= KD_VALUE;
                    fp_B <= temp_val_d;
                    start_mul <= '1';
                    
                    if done_mul = '1' then
                        temp_val_d <= fp_res_mul; 
                        state <= CALC_D_DIV;
                    end if;

                -- D (Pas 3): D = Temp / Ts
                when CALC_D_DIV =>
                    fp_A <= temp_val_d; -- Numarator (Kd * Diff)
                    fp_B <= TS_VALUE; 
                    start_div <= '1';
                    
                    if done_div = '1' then
                        term_D <= fp_res_div;
                        state <= CALC_U_ADD1;
                    end if;

                -- Output (Pas 1): Sum1 = P + I
                when CALC_U_ADD1 =>
                    fp_A <= term_P;
                    fp_B <= term_I;
                    fp_sub <= '0';
                    start_add <= '1';
                    
                    if done_add = '1' then
                        temp_val_i <= fp_res_add; 
                        state <= CALC_U_ADD2;
                    end if;
                
                -- Output (Pas 2): U = Sum1 + D
                when CALC_U_ADD2 =>
                    fp_A <= temp_val_i; -- P+I
                    fp_B <= term_D;
                    fp_sub <= '0';
                    start_add <= '1';
                    
                    if done_add = '1' then
                        control_output_u <= fp_res_add;
                        state <= UPDATE_ERROR;
                    end if;

                -- Update eroare
                when UPDATE_ERROR =>
                    error_n_1 <= error_n;
                    state <= FINISHED;

                when FINISHED =>
                    done <= '1';
                    if start = '0' then
                        state <= IDLE;
                    end if;
                    
            end case;
        end if;
    end process;

end Behavioral;