
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;  -- Needed for signed operations

ENTITY Sign_mux IS
    PORT (
        in_num : IN STD_LOGIC_VECTOR(7 downto 0);
        HEX3   : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
END Sign_mux;

ARCHITECTURE LOGICFUNCTION OF Sign_mux IS

    CONSTANT BLANK : STD_LOGIC_VECTOR(6 downto 0) := "1111111";  -- 8 bits
    CONSTANT DASH  : STD_LOGIC_VECTOR(6 downto 0) := "0111111";  -- 8 bits

    SIGNAL in_num_signed : SIGNED(7 downto 0);  -- Correct spelling and type

BEGIN

    -- Convert input to signed format
    in_num_signed <= SIGNED(in_num);

    PROCESS(in_num_signed)
    BEGIN
        IF in_num_signed(7) = '1' THEN  -- Check MSB for sign
            HEX3 <= DASH;
        ELSE
            HEX3 <= BLANK;
        END IF;
    END PROCESS;

END LOGICFUNCTION;