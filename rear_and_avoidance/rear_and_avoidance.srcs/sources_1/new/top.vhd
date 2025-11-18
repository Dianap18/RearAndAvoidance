library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_system is
    port (
        clk      : in  std_logic;
        rst_conv : in  std_logic;
        rst_fp   : in std_logic;
        start    : in  std_logic;
        pot_val  : in  std_logic_vector(11 downto 0); 
        pwm_val  : out std_logic_vector(7 downto 0); 
        done     : out std_logic;
        A        : in  std_logic_vector(31 downto 0);
        B        : in  std_logic_vector(31 downto 0);
        subtract : in  std_logic;
        fp_result: out std_logic_vector(31 downto 0);
        fp_done  : out std_logic
    );
end entity top_system;

architecture Behavioral of top_system is

    component conv_pwm_int
        generic (N : integer := 12);
        port (
            clk     : in  std_logic;
            reset   : in  std_logic;
            start   : in  std_logic;
            in_val  : in  std_logic_vector(N-1 downto 0);
            pwm_val : out std_logic_vector(7 downto 0);
            gata    : out std_logic
        );
    end component;

    component fp_addsub
        port (
            A        : in  std_logic_vector(31 downto 0);
            B        : in  std_logic_vector(31 downto 0);
            subtract : in  std_logic;
            clk      : in  std_logic;
            reset    : in  std_logic;
            start    : in  std_logic;
            done     : out std_logic;
            result   : out std_logic_vector(31 downto 0)
        );
    end component;

begin

    pwm_inst : conv_pwm_int
        generic map (N => 12)
        port map (
            clk     => clk,
            reset   => rst_conv,
            start   => start,
            in_val  => pot_val,
            pwm_val => pwm_val,
            gata    => done
        );

    fp_inst : fp_addsub
        port map (
            A        => A,
            B        => B,
            subtract => subtract,
            clk      => clk,
            reset    => rst_fp,
            start    => start,
            done     => fp_done,
            result   => fp_result
        );

end architecture Behavioral;
