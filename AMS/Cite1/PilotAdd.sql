SET SERVEROUTPUT ON;
SET VERIFY OFF;

clear screen;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Provide Appropriate Entries');
    DBMS_OUTPUT.PUT_LINE('No entries should be kept empty');
END;
/

ACCEPT P CHAR PROMPT 'Name = '
ACCEPT Q CHAR PROMPT 'Category = '
ACCEPT S CHAR PROMPT 'Nationality = '
ACCEPT T CHAR PROMPT 'Flying Hour = '

DECLARE
    pIDNo PilotInfo.PilotID%TYPE;
    pName PilotInfo.PilotName%TYPE;
    pCategory PilotInfo.Category%TYPE;
    pNation PilotInfo.Nationality%TYPE;
    pFHour PilotInfo.FlyingHour%TYPE;
    pNum Number;
BEGIN
    pName := '&P';
    pCategory := '&Q';
    pNation := '&S';
    pFHour := '&T';

    SELECT COUNT(*) INTO pNum FROM DataPilotInfo;
    pIDNo := 'I' || TO_CHAR(pNum + 1);

    IF pCategory = 'Domestic' THEN
        INSERT INTO PilotInfo@Cite2 VALUES(pIDNo, pName, pCategory, pNation, pFHour);
    ELSE
        INSERT INTO PilotInfo VALUES(pIDNo, pName, pCategory, pNation, pFHour);
    END IF;

    commit;
END;
/