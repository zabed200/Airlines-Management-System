SET SERVEROUTPUT ON;
SET VERIFY OFF;

clear screen;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Provide Appropriate Entries About Pilot');
    DBMS_OUTPUT.PUT_LINE('You can keep entries empty. Just press enter');
END;
/

ACCEPT P CHAR PROMPT 'Name = '
ACCEPT Q CHAR PROMPT 'Category = '
ACCEPT S CHAR PROMPT 'Nationality = '
ACCEPT T CHAR PROMPT 'Flying Hour = '

DECLARE
    pName PilotInfo.PilotName%TYPE;
    pCategory PilotInfo.Category%TYPE;
    pNation PilotInfo.Nationality%TYPE;
    pFHour PilotInfo.FlyingHour%TYPE;
    pNum Number;
    pException Exception;
BEGIN
    pName := '&P';
    pCategory := '&Q';
    pNation := '&S';
    pFHour := '&T';

    pNum := SuppPublicationCnt.cntRows(pName, pCategory, pNation, pFHour);
    IF pNum = 0 THEN
        RAISE pException;
    ELSE
        DBMS_OUTPUT.PUT_LINE('A Total of ' || pNum || ' Entries Matched with Given Values:');
        SuppPublicationCnt.printValues(pName, pCategory, pNation, pFHour);
    END IF;

EXCEPTION
    WHEN pException THEN
        DBMS_OUTPUT.PUT_LINE('No Entries Matched for the Given Input.');
END;
/