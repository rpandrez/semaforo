library ieee;
use ieee.std_logic_1164.all;

entity seletorSM is
    port (
        sel : in std_logic_vector(3 downto 0);
        SM0, SM1, SM2, SM3 : out std_logic
    );
end entity;

architecture comportamento of seletorSM is
begin
    process(sel)
    begin
        case sel is
            when "0000" =>
                SM0 <= '1';
                SM1 <= '0';
                SM2 <= '0';
                SM3 <= '0';
            when "0001" =>
                SM0 <= '0';
                SM1 <= '1';
                SM2 <= '0';
                SM3 <= '0';
            when "0010" =>
                SM0 <= '0';
                SM1 <= '0';
                SM2 <= '1';
                SM3 <= '0';
            when "0011" =>
                SM0 <= '0';
                SM1 <= '0';
                SM2 <= '0';
                SM3 <= '1';
            when others =>
                SM0 <= '0';
                SM1 <= '0';
                SM2 <= '0';
                SM3 <= '0';
        end case;
    end process;
end architecture;