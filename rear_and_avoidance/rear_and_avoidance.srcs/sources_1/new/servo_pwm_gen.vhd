library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity servo_pwm_gen is
    Port ( 
        clk       : in  STD_LOGIC;                     -- 125 MHz 
        val_in    : in  STD_LOGIC_VECTOR (7 downto 0); -- 0-255
        servo_pin : out STD_LOGIC                   
    );
end servo_pwm_gen;

architecture Behavioral of servo_pwm_gen is
    -- 1 secunda = 125,000,000 ticuri
    -- Servo-ul cere un semnal la fiecare 20ms (50Hz).
    -- 0.02 * 125.000.000 = 2.500.000 ticuri
    -- totalul ticurilor dintr-o perioadă de 20ms
    constant PWM_PERIOD_TICKS : integer := 2500000;
    
    -- Pozitia 0 grade = 1.0 ms.
    -- 1ms * 125,000,000 Hz = 125,000 ticaituri
    -- durata minimă a impulsului
    constant POS_MIN_TICKS    : integer := 125000;
    
    -- pentru ca primim un semnal pwm de max 225
    -- 125,000 ticaituri / 255 = 490 ticaituri
    -- 490 este cea mai mică schimbare posibilă pe care o poate face sistemul
    constant TICKS_PER_STEP   : integer := 490;

    signal cnt       : integer range 0 to PWM_PERIOD_TICKS := 0;
    signal high_time : integer range 0 to 250000 := 0; 

begin
    -- Calculam cat timp stam pe 1
    -- minim + val_pot*pas
    high_time <= POS_MIN_TICKS + (to_integer(unsigned(val_in)) * TICKS_PER_STEP);

    process(clk)
    begin
        if rising_edge(clk) then
            -- Counterul principal 0 -> 20ms
            if cnt < PWM_PERIOD_TICKS - 1 then
                cnt <= cnt + 1;
            else
                cnt <= 0;
            end if;

            -- pana nu a ajuns la high time sta pe 1, dupa trece in 0 pe 20ms
            if cnt < high_time then
                servo_pin <= '1';
            else
                servo_pin <= '0';
            end if;
        end if;
    end process;
end Behavioral;