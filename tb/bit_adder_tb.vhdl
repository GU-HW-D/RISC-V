library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity bit_adder_tb is
end entity bit_adder_tb;

architecture bit_adder_tb_arch of bit_adder_tb is

    component bit_adder is
        port (
            data1_i : in    std_logic;
            data2_i : in    std_logic;
            clk     : in    std_logic;
            res_o   : out   std_logic;
            carry_o : out   std_logic
        );
    end component bit_adder;

    signal clk_s   : std_logic := '0';
    signal data1_s : std_logic := '1';
    signal data2_s : std_logic := '1';
    signal res_s   : std_logic;
    signal carry_s : std_logic;

begin

    add0 : component bit_adder
        port map (
            clk     => clk_s,
            data1_i => data1_s,
            data2_i => data2_s,
            res_o   => res_s,
            carry_o => carry_s
        );

    tb : process is
    begin

        wait for 100 ns;
        clk_s <= '1';
        wait for 100 ns;
        wait;

    end process tb;

end architecture bit_adder_tb_arch;
