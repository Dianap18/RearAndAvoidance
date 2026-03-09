library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity inmultitor_shift_add is
    generic (
        N : integer := 12 
    );
    port (
        clk      : in  std_logic;                               
        resetare : in  std_logic;                             
        start    : in  std_logic;                              
        a        : in  std_logic_vector(N-1 downto 0);         
        b        : in  std_logic_vector(N-1 downto 0);          
        rezultat: out std_logic_vector(2*N downto 0);
        gata     : out std_logic                                
    );
end entity inmultitor_shift_add;

architecture Behavioral of inmultitor_shift_add is
    type stare_t is (ASTEPTARE, CALCUL, FINALIZARE);            
    signal stare : stare_t;                                     
    
    signal produs : unsigned(2*N downto 0); 
    
    signal multiplicand : unsigned(2*N downto 0);
    
    signal multiplicator : unsigned(N-1 downto 0);
    
    signal contor : integer range 0 to N;
    
begin
    process(clk, resetare)
    begin
        if resetare = '1' then
            stare <= ASTEPTARE; 
            produs <= (others => '0'); 
            multiplicand <= (others => '0'); 
            multiplicator <= (others => '0'); 
            contor <= 0; 
            gata <= '0'; 
        elsif rising_edge(clk) then  
            case stare is
                when ASTEPTARE =>
                    if start = '1' then 
                        stare <= CALCUL; 
                        produs <= (others => '0'); 
                        multiplicand <= resize(unsigned(a), 2*N + 1);
                        
                        multiplicator <= unsigned(b);
                        contor <= 0; 
                        gata <= '0'; 
                    end if;
                
                when CALCUL =>
                -- bitul este 1 se adună multiplicand-ul curent la produs
                -- daca nu, nu se aduna nimic
                    if multiplicator(0) = '1' then
                        produs <= produs + multiplicand; 
                    end if;
                    
                    -- multiplicand se shiftează la stânga
                    multiplicand <= shift_left(multiplicand, 1); 
                    -- multiplicator se shiftează la dreapta
                    multiplicator <= shift_right(multiplicator, 1);
                    
                    contor <= contor + 1; 
                    if contor = N-1 then 
                        stare <= FINALIZARE;
                    end if;
                
                when FINALIZARE =>
                    rezultat <= std_logic_vector(produs);
                    gata <= '1';
                    stare <= ASTEPTARE;
            end case;
        end if;
    end process;
end architecture Behavioral;