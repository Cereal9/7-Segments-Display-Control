LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;


ENTITY HEXcode IS
 PORT(
      SwitchA : in std_logic;
      SwitchB : in std_logic;
		SwitchC : in std_logic;
		SwitchD : in std_logic;
		
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6)
      );
END ENTITY;

ARCHITECTURE behave OF HEXcode IS 
BEGIN
	  HEX0(0) <= ((NOT SwitchA) AND (SwitchB) AND (NOT SwitchC) AND (NOT SwitchD)) OR ((NOT SwitchA) AND (NOT SwitchB) AND (NOT SwitchC) AND (SwitchD));
	  HEX0(1) <= ((NOT SwitchA) AND (SwitchB) AND (NOT SwitchC) AND (SwitchD)) OR ((SwitchA) AND (SwitchB) AND (NOT SwitchD)) OR (SwitchA AND SwitchB AND SwitchC) OR (SwitchB AND SwitchC AND NOT SwitchD);
	  HEX0(2) <= ((NOT SwitchA) AND (NOT SwitchB) AND (SwitchC) AND (NOT SwitchD)) OR (SwitchA AND SwitchB AND NOT switchD) OR (SwitchA AND SwitchB AND SwitchC);
	  HEX0(3) <= (SwitchB AND SwitchC AND SwitchD) OR (NOT SwitchA AND NOT SwitchB AND NOT SwitchC AND SwitchD) OR ((NOT SwitchA) AND (SwitchB) AND (NOT SwitchC) AND (NOT SwitchD)) OR (SwitchA AND NOT SwitchB AND SwitchC AND NOT SwitchD);
	  HEX0(4) <= (SwitchA AND NOT SwitchB AND NOT SwitchC AND SwitchD) OR (NOT SwitchA AND SwitchB AND NOT SwitchC) OR (NOT SwitchA AND SwitchD);
	  HEX0(5) <= (NOT SwitchA AND NOT SwitchB AND SwitchD) OR (NOT SwitchA AND NOT SwitchB AND SwitchC) OR (NOT SwitchA AND SwitchC AND SwitchD);
	  HEX0(6) <= (NOT SwitchA AND NOT SwitchB AND NOT SwitchC) OR (SwitchA AND SwitchB AND NOT SwitchC) OR (NOT SwitchA AND SwitchB AND SwitchC AND SwitchD);
END ARCHITECTURE;