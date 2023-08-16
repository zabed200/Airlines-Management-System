-------TRIGGER-------

----------------------------------
----------------------------------
----------------------------------

----------------------------------
CREATE OR REPLACE TRIGGER PilotInfoInsertCite1
AFTER INSERT ON PilotInfo
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite2 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER PilotInfoUpdateCite1
AFTER UPDATE ON PilotInfo
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite2 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER PilotInfoDeleteCite1
AFTER DELETE ON PilotInfo
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite2 Storage');
END;
/

----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER BookingsInsertCite1
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite2 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER BookingsUpdateCite1
AFTER UPDATE ON Bookings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite2 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER BookingsDeleteCite1
AFTER DELETE ON Bookings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite2 Storage');
END;
/

----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER AggregationInsertCite1
AFTER INSERT ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite2 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AggregationUpdateCite1
AFTER UPDATE ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite2 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AggregationDeleteCite1
AFTER DELETE ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite2 Storage');
END;
/

commit;