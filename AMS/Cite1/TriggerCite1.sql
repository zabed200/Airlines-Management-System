-------TRIGGER-------

----------------------------------
----------------------------------
----------------------------------

----------------------------------
CREATE OR REPLACE TRIGGER PilotInfoInsertCite1
AFTER INSERT ON PilotInfo
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER PilotInfoUpdateCite1
AFTER UPDATE ON PilotInfo
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER PilotInfoDeleteCite1
AFTER DELETE ON PilotInfo
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite1 Storage');
END;
/
----------------------------------
----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER BookingsInsertCite1
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER BookingsUpdateCite1
AFTER UPDATE ON Bookings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER RatingsInsertCite1
AFTER INSERT ON Ratings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER RatingsUpdateCite1
AFTER UPDATE ON Ratings
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/


----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER AirlinesInsertCite1
AFTER INSERT ON Airlines
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AirlinesUpdateCite1
AFTER UPDATE ON Airlines
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AirlinesDeleteCite1
AFTER DELETE ON Airlines
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite1 Storage');
END;
/

----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER AggregationInsertCite1
AFTER INSERT ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AggregationUpdateCite1
AFTER UPDATE ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AggregationDeleteCite1
AFTER DELETE ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite1 Storage');
END;
/

commit;