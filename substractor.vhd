library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity Substractor is
    GENERIC (N: INTEGER := 16);
    port (
        a,b,c: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        different, borrow: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
    );
end entity;
architecture Arch of Substractor is
begin
    different <= a XOR b XOR c;
    borrow <= (NOT a AND b) OR (b AND c) OR (NOT a AND c);
end architecture;
