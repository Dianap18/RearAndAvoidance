library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conv_pwm_int is
    port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        start    : in  std_logic;
        in_val   : in  std_logic_vector(11 downto 0);  -- pe 12 biti pentru ca aia e precizia XADC 
        pwm_val  : out std_logic_vector(7 downto 0); 
        gata     : out std_logic
    );
end entity conv_pwm_int;

architecture Behavioral of conv_pwm_int is

    signal mult_out   : std_logic_vector(24 downto 0); 
    signal mult_gata  : std_logic;
    signal div_out    : std_logic_vector(11 downto 0); 
    signal div_gata   : std_logic;

    component inmultitor_shift_add is
        port (
            clk      : in std_logic;
            resetare : in std_logic;
            start    : in std_logic;
            a        : in std_logic_vector(11 downto 0);
            b        : in std_logic_vector(11 downto 0);
            rezultat : out std_logic_vector(24 downto 0);
            gata     : out std_logic
        );
    end component;

    component RestoringDivision is
        port (
            clk       : in std_logic;
            resetare  : in std_logic;
            start     : in std_logic;
            dividend  : in std_logic_vector(24 downto 0);
            divisor   : in std_logic_vector(11 downto 0); 
            quotient  : out std_logic_vector(11 downto 0);
            gata      : out std_logic
        );
    end component;

begin

    mult_inst : inmultitor_shift_add
        port map (
            clk      => clk,
            resetare => reset,
            start    => start,
            a        => in_val,
            b        => "000011111111", --255
            rezultat => mult_out,
            gata     => mult_gata
        );

    div_inst : RestoringDivision
        port map (
            clk       => clk,
            resetare  => reset,
            start     => mult_gata,
            dividend  => mult_out,        
            divisor   => "111111111111", --4095 
            quotient  => div_out,
            gata      => div_gata
        );

    -- dam rezultatele mai departe
    pwm_val <= div_out(7 downto 0);
    gata    <= div_gata;

end architecture Behavioral;