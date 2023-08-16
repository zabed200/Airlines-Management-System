SET SERVEROUTPUT ON;
SET VERIFY OFF;

clear screen;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Provide Appropriate Entries');
    DBMS_OUTPUT.PUT_LINE('No Entries Should Be Kept Empty');
END;
/

ACCEPT P CHAR PROMPT 'Booking ID= '
ACCEPT Q CHAR PROMPT 'Email Address = '
ACCEPT S CHAR PROMPT 'Phone Number = '
--ACCEPT T CHAR PROMPT 'Airline Name = '
ACCEPT W CHAR PROMPT 'Category = '

DECLARE
    --bID Bookings.BookingID%TYPE;
	bpID Passengers.BookingID%TYPE;

    passCategory Passengers.Category%TYPE;
	passPhone Passengers.PassengerPhone%TYPE;
	passEmail Passengers.PassengerEmail%TYPE;
    bNum Number;
BEGIN
    bpID := '&P';
    passEmail := '&Q';
    passPhone := '&S';
	passCategory := '&W';

    IF passCategory = 'International' THEN
        UPDATE Passengers@Cite1 SET PassengerPhone = passPhone, PassengerEmail = passEmail WHERE BookingID = bpID;
    ELSE
        UPDATE Passengers SET PassengerPhone = passPhone, PassengerEmail = passEmail WHERE BookingID = bpID;
		
    END IF;


    
    commit;
END;
/