LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Displayer IS
    PORT (
        Abs_num : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        HEX2    : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);  -- Hundreds
        HEX1    : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);  -- Tens
        HEX0    : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   -- Ones
    );
END Displayer;

ARCHITECTURE LogicFunction OF Displayer IS

    CONSTANT SEG_0 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000000";
    CONSTANT SEG_1 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111001";
    CONSTANT SEG_2 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0100100";
    CONSTANT SEG_3 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0110000";
    CONSTANT SEG_4 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011001";
    CONSTANT SEG_5 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010010";
    CONSTANT SEG_6 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000010";
    CONSTANT SEG_7 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111000";
    CONSTANT SEG_8 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000000";
    CONSTANT SEG_9 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010000";
    CONSTANT BLANK : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111111";

    SIGNAL hundreds : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL tens     : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL ones     : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Abs_val  : Unsigned(7 DOWNTO 0);

BEGIN

 abs_val <= (unsigned(Abs_num));

        hundreds <= STD_LOGIC_VECTOR((abs_val / 100));
        tens     <= STD_LOGIC_VECTOR((abs_val rem 100) / 10);
        ones     <= STD_LOGIC_VECTOR((abs_val rem 100) rem 10);

    PROCESS(Abs_num,hundreds,tens,ones)

    BEGIN

        CASE hundreds IS
            WHEN "00000000" => HEX2 <= SEG_0;
            WHEN "00000001" => HEX2 <= SEG_1;
            WHEN "00000010" => HEX2 <= SEG_2;
            WHEN "00000011" => HEX2 <= SEG_3;
            WHEN "00000100" => HEX2 <= SEG_4;
            WHEN "00000101" => HEX2 <= SEG_5;
            WHEN "00000110" => HEX2 <= SEG_6;
            WHEN "00000111" => HEX2 <= SEG_7;
            WHEN "00001000" => HEX2 <= SEG_8;
            WHEN "00001001" => HEX2 <= SEG_9;
            WHEN OTHERS => HEX2 <= BLANK;
        END CASE;

        CASE tens IS
            WHEN "00000000" => HEX1 <= SEG_0;
            WHEN "00000001" => HEX1 <= SEG_1;
            WHEN "00000010" => HEX1 <= SEG_2;
            WHEN "00000011" => HEX1 <= SEG_3;
            WHEN "00000100" => HEX1 <= SEG_4;
            WHEN "00000101" => HEX1 <= SEG_5;
            WHEN "00000110" => HEX1 <= SEG_6;
            WHEN "00000111" => HEX1 <= SEG_7;
            WHEN "00001000" => HEX1 <= SEG_8;
            WHEN "00001001" => HEX1 <= SEG_9;
            WHEN OTHERS => HEX1 <= BLANK;
        END CASE;

        CASE ones IS
            WHEN "00000000" => HEX0 <= SEG_0;
            WHEN "00000001" => HEX0 <= SEG_1;
            WHEN "00000010" => HEX0 <= SEG_2;
            WHEN "00000011" => HEX0 <= SEG_3;
            WHEN "00000100" => HEX0 <= SEG_4;
            WHEN "00000101" => HEX0 <= SEG_5;
            WHEN "00000110" => HEX0 <= SEG_6;
            WHEN "00000111" => HEX0 <= SEG_7;
            WHEN "00001000" => HEX0 <= SEG_8;
            WHEN "00001001" => HEX0 <= SEG_9;
            WHEN OTHERS => HEX0 <= BLANK;
        END CASE;
    END PROCESS;

END LogicFunction;

