library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vm_mul is
    Port (
        clk     : in  STD_LOGIC;
        start   : in  STD_LOGIC;
        A       : in  STD_LOGIC_VECTOR(31 downto 0);
        B       : in  STD_LOGIC_VECTOR(31 downto 0);
        Z       : out STD_LOGIC_VECTOR(31 downto 0);
        done    : out STD_LOGIC
    );
end vm_mul;

architecture Behavioral of vm_mul is

    type state_type is (IDLE, UNPACK, CHECK_SPECIAL, MULTIPLY_MANT, NORMALIZE, PACK, FINISHED);
    signal state : state_type := IDLE;

    signal signA, signB, signZ : STD_LOGIC;
    signal expA, expB : unsigned(7 downto 0);
    signal expResult : signed(9 downto 0);
    
    
    signal mantA, mantB : unsigned(23 downto 0);
    
   
    signal mantProd : unsigned(47 downto 0);
    
    
    signal final_mant : unsigned(22 downto 0);
    signal final_exp  : signed(9 downto 0);
    
    signal result : STD_LOGIC_VECTOR(31 downto 0);

    constant INF_VAL : STD_LOGIC_VECTOR(31 downto 0) := X"7F800000"; 
    constant NAN_VAL : STD_LOGIC_VECTOR(31 downto 0) := X"7FC00000"; 
    constant ZERO_VAL: STD_LOGIC_VECTOR(31 downto 0) := X"00000000"; 

begin

    Z <= result;

    process(clk)
        
        variable v_temp_mant : unsigned(23 downto 0); 
        variable v_guard     : std_logic;
    begin
        if rising_edge(clk) then

            case state is

                when IDLE =>
                    done <= '0';
                    if start = '1' then
                        state <= UNPACK;
                    end if;

                when UNPACK =>
                    signA <= A(31);
                    signB <= B(31);
                    expA  <= unsigned(A(30 downto 23));
                    expB  <= unsigned(B(30 downto 23));

                   
                    if unsigned(A(30 downto 23)) /= 0 then
                        mantA <= '1' & unsigned(A(22 downto 0));
                    else
                        mantA <= '0' & unsigned(A(22 downto 0));
                    end if;
                    
                    if unsigned(B(30 downto 23)) /= 0 then
                        mantB <= '1' & unsigned(B(22 downto 0));
                    else
                        mantB <= '0' & unsigned(B(22 downto 0));
                    end if;

                    state <= CHECK_SPECIAL;

                when CHECK_SPECIAL =>
                    signZ <= signA xor signB;
                    
                    if (expA = 255) or (expB = 255) then
                        result <= INF_VAL; 
                        state <= FINISHED;
                    elsif (expA = 0) or (expB = 0) then
                        result <= ZERO_VAL;
                        state <= FINISHED;
                    else
                        state <= MULTIPLY_MANT;
                    end if;

                when MULTIPLY_MANT =>
                    -- înmulțirea mantiselor
                    -- 24 biți * 24 biți = 48 biți
                    mantProd <= mantA * mantB;
                    
                    -- Calcul exponent: ExpA + ExpB - Bias
                    expResult <= signed('0' & '0' & std_logic_vector(expA)) +
                                 signed('0' & '0' & std_logic_vector(expB)) - 127;
                                 
                    state <= NORMALIZE;

                when NORMALIZE =>
                    
                    if mantProd(47) = '1' then
                        
                        v_temp_mant := mantProd(47 downto 24); 
                        v_guard     := mantProd(23);
                        final_exp   <= expResult + 1;
                    else
                        
                        v_temp_mant := mantProd(46 downto 23);
                        v_guard     := mantProd(22);
                        final_exp   <= expResult;
                    end if;

                    
                    if v_guard = '1' then
                        v_temp_mant := v_temp_mant + 1;
                    end if;

                    final_mant <= v_temp_mant(22 downto 0);
                    
                    state <= PACK;

                when PACK =>
                    result(31) <= signZ;
                    result(30 downto 23) <= std_logic_vector(final_exp(7 downto 0));
                    result(22 downto 0)  <= std_logic_vector(final_mant);
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