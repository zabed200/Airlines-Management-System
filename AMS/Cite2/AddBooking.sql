SET SERVEROUTPUT ON;
SET VERIFY OFF;

clear screen;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Provide Appropriate Entries');
    DBMS_OUTPUT.PUT_LINE('No Entries Should Be Kept Empty');
END;
/

ACCEPT P CHAR PROMPT 'Customer Name = '
ACCEPT Q CHAR PROMPT 'Deperture Country = '
ACCEPT S CHAR PROMPT 'Destination Country = '
ACCEPT T CHAR PROMPT 'Airline Name = '
ACCEPT W CHAR PROMPT 'Category = '

DECLARE
    bIDNo Bookings.BookingID%TYPE;
    bName Bookings.CustomerName%TYPE;
    bDept Bookings.BookingDeperture%TYPE;
    bDest Bookings.BookingDest%TYPE;
    bAirName Bookings.AirlineName%TYPE;
	bCategory Bookings.Category%TYPE;
    bNum Number;
BEGIN
    bName := '&P';
    bDept := '&Q';
    bDest := '&S';
    bAirName := '&T';
	bCategory := '&W';

    SELECT COUNT(*) INTO bNum FROM DataBookings;
    bIDNo := 'B' || TO_CHAR(bNum + 1);

    IF bCategory = 'International' THEN
        INSERT INTO Bookings@Cite1 VALUES(bIDNo, bName, bDept, bDest, bAirName, bCategory);
    ELSE
        INSERT INTO Bookings VALUES(bIDNo, bName, bDept, bDest, bAirName, bCategory);
    END IF;

    commit;
END;
/