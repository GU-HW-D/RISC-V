library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity bit_adder is
    port (
        data1_i : in    std_logic;
        data2_i : in    std_logic;
        clk     : in    std_logic;
        res_o   : out   std_logic;
        carry_o : out   std_logic
    );
end entity bit_adder;

architecture bit_adder_arch of bit_adder is

begin

    add_proc : process (clk) is
    begin

        if rising_edge(clk) then
            res_o   <= data1_i or data2_i;
            carry_o <= data1_i and data2_i;
        end if;

    end process add_proc;

end architecture bit_adder_arch;
