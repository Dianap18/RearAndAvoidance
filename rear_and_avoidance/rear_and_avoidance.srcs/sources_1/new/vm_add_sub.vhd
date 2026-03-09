library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vm_add_sub is
    port(
        A        : in  std_logic_vector(31 downto 0);
        B        : in  std_logic_vector(31 downto 0);
        subtract : in  std_logic;  
        clk      : in  std_logic;
        reset    : in  std_logic;
        start    : in  std_logic;
        done     : out std_logic;
        result   : out std_logic_vector(31 downto 0)
    );
end vm_add_sub;

architecture Behavioral of vm_add_sub is

    type ST is (WAIT_STATE, UNPACK_STATE, ALIGN_STATE, ADDITION_STATE, NORMALIZE_STATE, PACK_STATE);
    signal state : ST := WAIT_STATE;
    
    -- 23 (date) + 1 (bitul ascuns) + 4 (biti de rezerva pentru precizie la shiftare)
    constant MANT_WIDTH : integer := 28;
    signal A_mantissa_ext, B_mantissa_ext : unsigned(MANT_WIDTH-1 downto 0);
    
    -- Exponentul e pe 9 biti (semnat) ca sa putem detecta daca scade sub zero
    signal A_exp_s, B_exp_s : signed(8 downto 0);
    signal A_sgn, B_sgn     : std_logic;
    
    signal final_exp_s    : signed(8 downto 0);
    signal final_mantissa : signed(MANT_WIDTH downto 0); -- 29 bits total (28..0)
    signal final_sgn      : std_logic; 

    constant EXP_BIAS : signed(8 downto 0) := to_signed(127, 9);
    
    -- constante pentru infinit si zero
    constant INF_MANT : STD_LOGIC_VECTOR(31 downto 0) := X"7F800000"; 
    constant ZERO_MANT: STD_LOGIC_VECTOR(31 downto 0) := X"00000000"; 
    
begin

    Control_Unit : process(clk, reset)
        variable diff : signed(8 downto 0);
        variable shift_amount : integer range 0 to MANT_WIDTH;
        variable temp_A_mantissa, temp_B_mantissa : unsigned(MANT_WIDTH-1 downto 0);
        variable temp_mantissa_result : signed(MANT_WIDTH downto 0);
        variable temp_final_sgn_v     : std_logic;

    begin
        if (reset = '1') then
            state <= WAIT_STATE;
            done  <= '0';
        elsif rising_edge(clk) then
            
            temp_A_mantissa := A_mantissa_ext;
            temp_B_mantissa := B_mantissa_ext;
            
            case state is

                when WAIT_STATE =>
                    done <= '0';
                    if (start = '1') then state <= UNPACK_STATE; end if;

                -- Semn, Exponent si Mantisa
                when UNPACK_STATE =>
                    A_sgn     <= A(31);
                    -- Daca e scadere, inversam semnul lui B
                    B_sgn     <= B(31) xor subtract;
                    -- Convertim exponentul la numar cu semn
                    A_exp_s   <= to_signed(to_integer(unsigned('0' & A(30 downto 23))), 9);
                    B_exp_s   <= to_signed(to_integer(unsigned('0' & B(30 downto 23))), 9);
                    
                    -- adaugam bitul ascuns
                    A_mantissa_ext <= '1' & unsigned(A(22 downto 0)) & "0000";
                    B_mantissa_ext <= '1' & unsigned(B(22 downto 0)) & "0000";

                    state <= ALIGN_STATE;

                when ALIGN_STATE =>
                -- aliniere exponenti
                -- aducem numerele la aceeasi putere a lui 2
                    if A_exp_s > B_exp_s then
                    -- daca A e mai mare aliniem dupa el 
                        diff := A_exp_s - B_exp_s;
                        final_exp_s <= A_exp_s;
                        shift_amount := to_integer(diff);
                        -- dcaa e o diferenta foarte mare, numarul mic dispare
                        if shift_amount >= MANT_WIDTH then 
                            temp_final_sgn_v := A_sgn; 
                            final_mantissa <= signed('0' & A_mantissa_ext);
                            state <= PACK_STATE;
                        else
                            temp_B_mantissa := shift_right(B_mantissa_ext, shift_amount);
                            state <= ADDITION_STATE;
                        end if;
                    elsif A_exp_s < B_exp_s then
                        diff := B_exp_s - A_exp_s;
                        final_exp_s <= B_exp_s;
                        shift_amount := to_integer(diff);
                        if shift_amount >= MANT_WIDTH then 
                            temp_final_sgn_v := B_sgn; 
                            final_mantissa <= signed('0' & B_mantissa_ext);
                            state <= PACK_STATE;
                        else
                            temp_A_mantissa := shift_right(A_mantissa_ext, shift_amount);
                            state <= ADDITION_STATE;
                        end if;
                    else
                        final_exp_s <= A_exp_s;
                        state <= ADDITION_STATE;
                    end if;
                    
                    A_mantissa_ext <= temp_A_mantissa;
                    B_mantissa_ext <= temp_B_mantissa;
                    if state = PACK_STATE then final_sgn <= temp_final_sgn_v; end if;

                when ADDITION_STATE =>
                   
                    if A_sgn = B_sgn then
                        temp_mantissa_result := signed('0' & A_mantissa_ext) + signed('0' & B_mantissa_ext);
                        temp_final_sgn_v     := A_sgn;
                    elsif A_mantissa_ext >= B_mantissa_ext then
                        temp_mantissa_result := signed('0' & A_mantissa_ext) - signed('0' & B_mantissa_ext);
                        temp_final_sgn_v     := A_sgn;
                    else
                        temp_mantissa_result := signed('0' & B_mantissa_ext) - signed('0' & A_mantissa_ext);
                        temp_final_sgn_v     := B_sgn;
                    end if;
                    
                    final_mantissa <= temp_mantissa_result;
                    final_sgn      <= temp_final_sgn_v;
                    state <= NORMALIZE_STATE;

                when NORMALIZE_STATE =>
                    if to_unsigned(0, MANT_WIDTH+1) = unsigned(final_mantissa) then
                        final_exp_s <= (others => '0');
                        state <= PACK_STATE;
                    
                    
                    elsif final_mantissa(MANT_WIDTH) = '1' then 
                        final_mantissa <= shift_right(final_mantissa, 1);
                        final_exp_s    <= final_exp_s + 1;
                        state <= PACK_STATE;
                    
                   
                    elsif final_mantissa(MANT_WIDTH-1) = '0' then 
                        for i in MANT_WIDTH-2 downto 0 loop
                            if final_mantissa(i) = '1' then
                                shift_amount := (MANT_WIDTH-1) - i;
                                exit;
                            end if;
                        end loop;
                        
                        if shift_amount /= 0 then
                            final_mantissa <= shift_left(final_mantissa, shift_amount);
                            final_exp_s    <= final_exp_s - to_signed(shift_amount, 9);
                        end if;
                        state <= PACK_STATE;
                    else 
                        state <= PACK_STATE;
                    end if;

                when PACK_STATE =>
                    if final_exp_s > to_signed(255, 9) then 
                        result <= final_sgn & INF_MANT(30 downto 0);
                    elsif final_exp_s <= to_signed(0, 9) then 
                        result <= final_sgn & ZERO_MANT(30 downto 0);
                    else
                       
                        result(31)           <= final_sgn;
                        result(30 downto 23) <= std_logic_vector(final_exp_s(7 downto 0));
                        result(22 downto 0)  <= std_logic_vector(final_mantissa(26 downto 4));
                    end if;
                    
                    done  <= '1';
                    if (start = '0') then state <= WAIT_STATE; end if;

            end case;
        end if;
    end process;

end Behavioral;