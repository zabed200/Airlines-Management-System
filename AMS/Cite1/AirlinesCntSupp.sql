-------PACKAGE DECLARATION-------
CREATE OR REPLACE PACKAGE SuppPublicationCnt AS
    FUNCTION cntRows(pName IN PilotInfo.PilotName%TYPE, pCategory IN PilotInfo.Category%TYPE, 
                    pNation IN PilotInfo.Nationality%TYPE, pFHour IN PilotInfo.FlyingHour%TYPE)
    RETURN NUMBER;

    PROCEDURE printValues(pName IN PilotInfo.PilotName%TYPE, pCategory IN PilotInfo.Category%TYPE, 
                    pNation IN PilotInfo.Nationality%TYPE, pFHour IN PilotInfo.FlyingHour%TYPE);
END SuppPublicationCnt;
/

-------PACKAGE BODY DECLARATION-------
CREATE OR REPLACE PACKAGE BODY SuppPublicationCnt AS
    FUNCTION cntRows(pName IN PilotInfo.PilotName%TYPE, pCategory IN PilotInfo.Category%TYPE, 
                    pNation IN PilotInfo.Nationality%TYPE, pFHour IN PilotInfo.FlyingHour%TYPE)
    RETURN NUMBER
    IS
    pNum NUMBER;
    BEGIN
        SELECT COUNT(*) INTO pNum FROM DataAirlines WHERE AirlineID IN (SELECT AirlineID FROM DataAggregation 
                WHERE PilotID IN (SELECt PilotID FROM DataPilotInfo WHERE PilotName LIKE '%' || pName || '%' AND 
                Category LIKE '%' || pCategory || '%' AND Nationality LIKE '%' || pNation || '%' AND FlyingHour LIKE '%' || pFHour || '%'));
        return pNum;
    END;

    PROCEDURE printValues(pName IN PilotInfo.PilotName%TYPE, pCategory IN PilotInfo.Category%TYPE, 
                    pNation IN PilotInfo.Nationality%TYPE, pFHour IN PilotInfo.FlyingHour%TYPE)
    IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
        -- Outer Loop to find infomation about the Airline
        FOR R in (SELECT * FROM DataAirlines WHERE AirlineID IN (SELECT AirlineID FROM DataAggregation 
                WHERE PilotID IN (SELECt PilotID FROM DataPilotInfo WHERE PilotName LIKE '%' || pName || '%' AND 
                Category LIKE '%' || pCategory || '%' AND Nationality LIKE '%' || pNation || '%' AND FlyingHour LIKE '%' || pFHour || '%'))) LOOP
                    -- Inner Loop to find information about the relevant PilotInfo
                    FOR S in (SELECT * FROM DataPilotInfo WHERE PilotID IN (SELECT PilotID FROM DataAggregation
                            WHERE AirlineID IN R.AirlineID AND PilotID IN (SELECt PilotID FROM DataPilotInfo WHERE PilotName LIKE '%' || pName || '%' AND 
                            Category LIKE '%' || pCategory || '%' AND Nationality LIKE '%' || pNation || '%' AND FlyingHour LIKE '%' || pFHour || '%'))) LOOP
                        DBMS_OUTPUT.PUT_LINE('=================');
                        DBMS_OUTPUT.PUT_LINE('PilotInfo Information');
                        DBMS_OUTPUT.PUT_LINE('PilotInfo Name: ' || S.PilotName);
                        DBMS_OUTPUT.PUT_LINE('PilotInfo Category: ' || S.Category);
                        DBMS_OUTPUT.PUT_LINE('PilotInfo Nationality: ' || S.Nationality);
                        DBMS_OUTPUT.PUT_LINE('PilotInfo Flying Hour: ' || S.FlyingHour);
                        DBMS_OUTPUT.PUT_LINE('=================');
                        DBMS_OUTPUT.PUT_LINE('Airline Information');
                        DBMS_OUTPUT.PUT_LINE('Airline Name: ' || R.AirlineName);
                        DBMS_OUTPUT.PUT_LINE('Airline Vehicle Model: ' || R.VehicleModel);
                        DBMS_OUTPUT.PUT_LINE('Airline Origin: ' || R.AirlineOrigin);
                        DBMS_OUTPUT.PUT_LINE('Airline Airline Rating: ' || R.AirlineRating);
						DBMS_OUTPUT.PUT_LINE('Airline Category: ' || R.Category);
                        
                        DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
                    END LOOP;
        END LOOP;
    END;

END SuppPublicationCnt;
/