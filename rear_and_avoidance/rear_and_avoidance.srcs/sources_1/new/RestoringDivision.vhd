library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity RestoringDivision is
    generic (
        N_QUOTIENT : integer := 12; 
        N_DIVIDEND : integer := 25  
    );
    port (
        clk      : in  std_logic;
        resetare : in  std_logic;
        start    : in  std_logic;
        dividend : in  std_logic_vector(N_DIVIDEND-1 downto 0); 
        divisor  : in  std_logic_vector(N_QUOTIENT-1 downto 0);  
        quotient : out std_logic_vector(N_QUOTIENT-1 downto 0); 
        gata     : out std_logic
    );
end entity RestoringDivision;

architecture Behavioral of RestoringDivision is
    
    constant N_AM : integer := N_QUOTIENT; 
    constant N_AM_EXT : integer := N_QUOTIENT + 1; 

    type state_type is (S_ASTEPTARE, S_CALCUL, S_FINAL);
    signal state  : state_type;
    
    signal A      : std_logic_vector(N_AM_EXT-1 downto 0);
    
    signal M      : std_logic_vector(N_AM_EXT-1 downto 0); 
    
    signal Q      : std_logic_vector(N_QUOTIENT-1 downto 0); 
    
    signal R : std_logic_vector(N_DIVIDEND-1 downto 0); 

    signal contor : integer range 0 to N_QUOTIENT; 

begin
    process(clk, resetare)
        variable A_prim, A_partial : std_logic_vector(N_AM_EXT-1 downto 0);
        variable R_partial : std_logic_vector(N_DIVIDEND-1 downto 0);
        variable currentCont : integer range 0 to N_QUOTIENT;
    begin
        if resetare = '1' then
            state      <= S_ASTEPTARE;
            M          <= (others => '0');
            Q          <= (others => '0');
            R          <= (others => '0');
            A          <= (others => '0');
            gata       <= '0';
            contor     <= 0;
        elsif rising_edge(clk) then
            case state is
                when S_ASTEPTARE =>
                    if start = '1' then
                        R <= dividend;
                        
                        M <= (others => '0');
                        M(N_QUOTIENT-1 downto 0) <= divisor;
                        M <= (not M) + 1; 
                        
                        Q <= (others => '0'); 
                        A <= (others => '0'); 
                        contor <= N_QUOTIENT; 
                        state  <= S_CALCUL;
                    end if;

                when S_CALCUL =>
                    currentCont := contor;
                    A_partial := A;
                    R_partial := R;
                
                    A_prim := A_partial(N_AM_EXT-2 downto 0) & R_partial(N_DIVIDEND-1);
                    R_partial(N_DIVIDEND-1 downto 1) := R_partial(N_DIVIDEND-2 downto 0);
                    R_partial(0) := '0'; 

                    A_partial := A_prim; 

                    A_prim := A_prim + M; 

                    if A_prim(N_AM_EXT-1) = '1' then 
                        A_prim := A_partial;
                        R_partial(0) := '0'; 
                    else
                        R_partial(0) := '1'; 
                    end if;
                    
                    A <= A_prim;
                    R <= R_partial;
                    
                    currentCont := currentCont - 1;
                    contor <= currentCont;
                   
                    if currentCont = 0 then
                        state <= S_FINAL;
                    end if;

                when S_FINAL =>
                    quotient <= R(N_QUOTIENT-1 downto 0);
                    gata     <= '1';
                    state    <= S_ASTEPTARE;

            end case;
        end if;
    end process;
end architecture Behavioral;