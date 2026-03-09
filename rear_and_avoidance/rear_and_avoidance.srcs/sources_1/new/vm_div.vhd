library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vm_div is
    Port (
        clk     : in  STD_LOGIC;
        start   : in  STD_LOGIC;
        A       : in  STD_LOGIC_VECTOR(31 downto 0);
        B       : in  STD_LOGIC_VECTOR(31 downto 0);
        Z       : out STD_LOGIC_VECTOR(31 downto 0);
        done    : out STD_LOGIC
    );
end vm_div;

architecture Behavioral of vm_div is

    type state_type is (IDLE, UNPACK, CHECK_SPECIAL, DIVIDE_MANT, SUB_EXP, NORMALIZE, ROUND_STAGE, PACK, FINISHED);
    signal state : state_type := IDLE;

    signal signA, signB, signZ : STD_LOGIC;
    signal expA, expB : unsigned(7 downto 0);
    signal expDiff    : signed(9 downto 0); 
    signal mantA, mantB : unsigned(23 downto 0);
    
    signal mantA_ext : unsigned(47 downto 0);
    signal mantQuot  : unsigned(47 downto 0);
    
    signal mantNorm_temp : unsigned(23 downto 0);
    signal mantNorm      : unsigned(22 downto 0);
    
    signal result        : STD_LOGIC_VECTOR(31 downto 0);

    constant EXP_BIAS : integer := 127;
    constant ALL_ZEROS_23 : STD_LOGIC_VECTOR(22 downto 0) := (others => '0');
    constant INF_VAL_31   : STD_LOGIC_VECTOR(30 downto 0) := "11111111" & "00000000000000000000000";

begin

    Z <= result;

    process(clk)
    begin
        if rising_edge(clk) then

            case state is

                when IDLE =>
                    done <= '0';
                    if start = '1' then state <= UNPACK; end if;

                when UNPACK =>
                    signA <= A(31); signB <= B(31);
                    expA <= unsigned(A(30 downto 23)); expB <= unsigned(B(30 downto 23));
                    
                    if unsigned(A(30 downto 23)) /= 0 then mantA <= '1' & unsigned(A(22 downto 0));
                    else mantA <= '0' & unsigned(A(22 downto 0)); end if;
                    
                    if unsigned(B(30 downto 23)) /= 0 then mantB <= '1' & unsigned(B(22 downto 0));
                    else mantB <= '0' & unsigned(B(22 downto 0)); end if;
                    state <= CHECK_SPECIAL;

                when CHECK_SPECIAL =>
                    signZ <= signA xor signB;
                    
                    if (expA = 255 and A(22 downto 0) /= ALL_ZEROS_23) or 
                       (expB = 255 and B(22 downto 0) /= ALL_ZEROS_23) then
                        result <= X"7FC00000"; state <= FINISHED; 
                    
                    elsif (expA=0 and A(22 downto 0)=ALL_ZEROS_23 and expB=0 and B(22 downto 0)=ALL_ZEROS_23) or 
                          (expA=255 and expB=255) then
                        result <= X"7FC00000"; state <= FINISHED;
                    
                    elsif (expB=0 and B(22 downto 0)=ALL_ZEROS_23) or (expA=255) then
                        result <= (signA xor signB) & INF_VAL_31; state <= FINISHED; 
                    
                    elsif (expA=0 and A(22 downto 0)=ALL_ZEROS_23) then
                        result(31) <= signA xor signB; result(30 downto 0) <= (others=>'0'); state <= FINISHED; 
                    
                    else
                        state <= DIVIDE_MANT;
                    end if;

                when DIVIDE_MANT =>
                    mantA_ext <= mantA & to_unsigned(0, 24);
                    mantQuot <= (mantA & to_unsigned(0, 24)) / mantB;
                    state <= SUB_EXP;

                when SUB_EXP =>
                    expDiff <= signed('0' & '0' & std_logic_vector(expA)) - 
                               signed('0' & '0' & std_logic_vector(expB)) + 
                               to_signed(EXP_BIAS, 10);
                    state <= NORMALIZE;

                when NORMALIZE =>
                    if mantQuot(24) = '1' then
                        mantNorm_temp <= mantQuot(24 downto 1);
                    else
                        mantNorm_temp <= mantQuot(23 downto 0);
                        expDiff <= expDiff - 1;
                    end if;
                    state <= ROUND_STAGE;

                when ROUND_STAGE =>
                    mantNorm <= mantNorm_temp(22 downto 0);
                    state <= PACK;

                when PACK =>
                    if expDiff >= to_signed(255, 10) then 
                        result <= signZ & INF_VAL_31;
                    elsif expDiff <= to_signed(0, 10) then 
                        result(31) <= signZ; 
                        result(30 downto 0) <= (others => '0');
                    else
                      
                        result <= signZ & std_logic_vector(expDiff(7 downto 0)) & std_logic_vector(mantNorm);
                    end if;
                    state <= FINISHED;

                when FINISHED =>
                    done <= '1';
                    if start = '0' then state <= IDLE; end if;

            end case;
        end if;
    end process;

end Behavioral;