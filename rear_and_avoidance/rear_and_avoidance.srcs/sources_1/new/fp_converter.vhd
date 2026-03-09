library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fp_converter is
    port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        
        -- Intreg (12 bit) -> FP (32 bit)
        start_i2f : in  std_logic; 
        in_int    : in  std_logic_vector(11 downto 0); -- potentiometru
        out_fp    : out std_logic_vector(31 downto 0); --val in float pentru pid
        done_i2f  : out std_logic;
        
        -- FP (32 bit) -> Intreg (12 bit)
        start_f2i : in  std_logic;
        in_fp     : in  std_logic_vector(31 downto 0); -- iesire pid
        out_int   : out std_logic_vector(11 downto 0); -- pentru a fi scalata
        done_f2i  : out std_logic
    );
end fp_converter;

architecture Behavioral of fp_converter is
    
    type CONV_STATE is (C_IDLE, C_I2F_FIND_MSB, C_I2F_PACK, C_F2I_UNPACK, C_F2I_FINISH);
    signal state : CONV_STATE := C_IDLE;

    -- registru pentru shiftari
    signal working_int : unsigned(31 downto 0) := (others => '0'); 
    
    signal fp_sign : std_logic := '0';
    signal fp_exp_u : unsigned(7 downto 0) := (others => '0');
    signal fp_mant_u : unsigned(22 downto 0) := (others => '0');

    -- exponentul real se aduna cu 127
    constant EXP_BIAS : integer := 127;
    constant MAX_12_BIT : unsigned(11 downto 0) := (others => '1'); -- 4095

begin
    
    process(clk, reset)
        -- tine minte unde e cel mai semnificativ bit de 1
        variable shift_count_v : integer range 0 to 31;
        -- Când treci spre Float: Valoare + 127
        -- Când vii dinspre Float: Valoare - 127 
        variable temp_fp_exp_v : integer;
        variable temp_shifted_v : unsigned(31 downto 0); -- Pt shiftare mantisa
        variable temp_int_v : unsigned(31 downto 0);     -- Pt F2I
        variable clamped_value_v : unsigned(11 downto 0);
    begin
        if reset = '1' then
            state <= C_IDLE;
            done_i2f <= '0';
            done_f2i <= '0';
            out_fp <= (others => '0');
            out_int <= (others => '0');
            working_int <= (others => '0');
        elsif rising_edge(clk) then
            done_i2f <= '0';
            done_f2i <= '0';

            case state is
                when C_IDLE =>
                    if start_i2f = '1' then
                        fp_sign <= '0';
                        -- Extindem cei 12 biti la 32
                        working_int <= resize(unsigned(in_int), 32);
                        state <= C_I2F_FIND_MSB;
                    elsif start_f2i = '1' then
                        fp_sign <= in_fp(31); -- Salvam semnul original
                        state <= C_F2I_UNPACK;
                    end if;

                -- INT -> FP
                when C_I2F_FIND_MSB =>
                -- transformam numarul in formatul 1.xxxxx * 2^putere
                    -- Cautam MSB de 1 
                    shift_count_v := 0;
                    for i in 30 downto 0 loop
                        if working_int(i) = '1' then
                            shift_count_v := i;
                            exit;
                        end if;
                    end loop;
                    
                    if shift_count_v = 0 and working_int = 0 then 
                        -- Cazul Zero
                        fp_exp_u <= (others => '0');
                        fp_mant_u <= (others => '0');
                    else
                        -- Calculam Exponentului : Pozitia bitului + 127
                        temp_fp_exp_v := EXP_BIAS + shift_count_v;
                        fp_exp_u <= to_unsigned(temp_fp_exp_v, 8);
                        
                        -- Calculam Mantisa
                        -- impingem bitul gasit pana la pozitia 23
                        -- Restul bitilor din dreapta lui devin zecimalele
                        if shift_count_v < 23 then
                            temp_shifted_v := shift_left(working_int, 23 - shift_count_v);
                            -- Mantisa sunt bits 22..0 din rezultatul shiftat
                            fp_mant_u <= temp_shifted_v(22 downto 0);
                        else
                            fp_mant_u <= (others => '0'); 
                        end if;
                    end if;
                    state <= C_I2F_PACK;

                when C_I2F_PACK =>
                -- Semn + Exponent + Mantisa intr-un vector de 32 bit
                    out_fp(31) <= fp_sign;
                    out_fp(30 downto 23) <= std_logic_vector(fp_exp_u);
                    out_fp(22 downto 0) <= std_logic_vector(fp_mant_u);
                    done_i2f <= '1'; -- semnalam la pid ca datele au fost convertite
                    state <= C_IDLE;

                -- FP -> INT
                when C_F2I_UNPACK =>
                    -- Aflam puterea reala a lui 2 (scadem 127)
                    temp_fp_exp_v := to_integer(unsigned(in_fp(30 downto 23))) - EXP_BIAS;
                    
                    -- CAZ 1: Negative sau < 1.0
                    if fp_sign = '1' or temp_fp_exp_v < 0 then
                        working_int <= (others => '0'); -- trimitem 0
                    
                    -- CAZ 2: Overflow (> 4095)
                    elsif temp_fp_exp_v > 11 then
                        working_int <= (others => '1'); -- saturam la maxim
                        
                    -- CAZ 3: Normal
                    else
                        temp_int_v := (others => '0');
                        -- Adaugam bitul ascuns de 1 in fata mantisei
                        temp_int_v(23 downto 0) := unsigned('1' & in_fp(22 downto 0));
                        
                        -- Shiftam dreapta pt a ajunge la intreg
                        temp_int_v := shift_right(temp_int_v, 23 - temp_fp_exp_v);
                        working_int <= temp_int_v;
                    end if;
                    
                    state <= C_F2I_FINISH;

                when C_F2I_FINISH =>
                    -- verificam daca nu am trecut peste 
                    if working_int > 4095 then
                        clamped_value_v := MAX_12_BIT;
                    else
                        clamped_value_v := working_int(11 downto 0);
                    end if;
                    
                    out_int <= std_logic_vector(clamped_value_v);
                    done_f2i <= '1';
                    state <= C_IDLE;

                when others =>
                    state <= C_IDLE;
            end case;
        end if;
    end process;
end Behavioral;