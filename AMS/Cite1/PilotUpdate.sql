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
BEGIN
    pName := '&P';
    pCategory := '&Q';
    pNation := '&S';
    pFHour := '&T';

    DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
    FOR R IN (SELECT * FROM DataPilotInfo WHERE PilotName LIKE '%' || pName || '%' AND 
            Category LIKE '%' || pCategory || '%' AND Nationality LIKE '%' || pNation || '%' AND FlyingHour LIKE '%' || pFHour || '%') LOOP
        DBMS_OUTPUT.PUT_LINE('=================');
        DBMS_OUTPUT.PUT_LINE('PilotInfo ID: ' || R.PilotID);
        DBMS_OUTPUT.PUT_LINE('PilotInfo Name: ' || R.PilotName);
        DBMS_OUTPUT.PUT_LINE('PilotInfo Category: ' || R.Category);
        DBMS_OUTPUT.PUT_LINE('PilotInfo Nationality: ' || R.Nationality);
        DBMS_OUTPUT.PUT_LINE('PilotInfo Flying Hour: ' || R.FlyingHour);
        DBMS_OUTPUT.PUT_LINE('=================');
        DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
    END LOOP;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Enter the new data you wish to insert');
    DBMS_OUTPUT.PUT_LINE('Keep the PilotID unchanged');
END;
/

ACCEPT P1 CHAR PROMPT 'Name = '
ACCEPT Q1 CHAR PROMPT 'Category = '
ACCEPT S1 CHAR PROMPT 'Nationality = '
ACCEPT T1 CHAR PROMPT 'Flying Hour = '
ACCEPT U1 CHAR PROMPT 'PilotID = '

DECLARE
    pIDNo PilotInfo.PilotID%TYPE;
    pName PilotInfo.PilotName%TYPE;
    pCategory PilotInfo.Category%TYPE;
    pNation PilotInfo.Nationality%TYPE;
    pFHour PilotInfo.FlyingHour%TYPE;
BEGIN
    pName := '&P1';
    pCategory := '&Q1';
    pNation := '&S1';
    pFHour := '&T1';
    pIDNo := '&U1';

    IF pCategory = 'Domestic' THEN
        UPDATE PilotInfo@Cite2 SET PilotName = pName, Nationality = pNation, FlyingHour = pFHour WHERE PilotID = pIDNo;
    ELSE
        UPDATE PilotInfo SET PilotName = pName, Nationality = pNation, FlyingHour = pFHour WHERE PilotID = pIDNo;
    END IF;

    commit;
END;
/