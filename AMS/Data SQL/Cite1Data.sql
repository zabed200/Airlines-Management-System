clear screen;

--delete existing table
DROP TABLE PilotInfo CASCADE CONSTRAINTS;
DROP TABLE Airlines CASCADE CONSTRAINTS;
DROP TABLE Aggregation CASCADE CONSTRAINTS;
DROP TABLE Bookings CASCADE CONSTRAINTS;
DROP TABLE Ratings CASCADE CONSTRAINTS;
DROP TABLE Passengers CASCADE CONSTRAINTS;
DROP TABLE Ticketing1 CASCADE CONSTRAINTS;
DROP TABLE Ticketing2 CASCADE CONSTRAINTS;

/**
--    CREATE TABLES
**/

--Create Author Table

CREATE TABLE PilotInfo
(
    PilotID varchar(100),
    PilotName varchar(100),
    Category varchar(100),
    Nationality varchar(100),
    FlyingHour varchar(100),
        PRIMARY KEY (PilotID)
);

--Create Paprs Table
CREATE TABLE Airlines
(
    AirlineID varchar(100),
    AirlineName varchar(200),
    VehicleModel varchar(100),
    AirlineOrigin varchar(100),
    AirlineRating varchar(100),
    Category varchar(100),
        PRIMARY KEY (AirlineID)
);

--Create Aggregation Table
CREATE TABLE Aggregation
(
    AggregateID varchar(100),
    PilotID varchar(100),
         PRIMARY KEY (AggregateID)
);

CREATE TABLE Bookings
(
    BookingID varchar(100),
    CustomerName varchar(200),
	BookingDeperture varchar(100),
    BookingDest varchar(100),
    AirlineName varchar(100),
	Category varchar(100),
        PRIMARY KEY (BookingID)
);


CREATE TABLE Ratings
(
    RatingID varchar(100),
    Rating varchar(200),
	AirlineName varchar(100),
	Category varchar(100),
       PRIMARY KEY (RatingID)
);

CREATE TABLE Passengers
(
    PassengerID varchar(100),
    PassengerName varchar(100),
	BookingID varchar(100),
	AirlineName varchar(100),
	Category varchar(100),
	PassengerPhone varchar(100),
	PassengerEmail varchar(100),
       PRIMARY KEY (PassengerID)
);

CREATE TABLE Ticketing1
(
    TicketID varchar(100),
    BookingID varchar(100),
         PRIMARY KEY (TicketID)
);
CREATE TABLE Ticketing2
(
    TicketID varchar(100),
    BookingID varchar(100),
	FlyingDate DATE,
         PRIMARY KEY (TicketID)
);

/**
--    INSERING DATA
**/

-- Author
INSERT INTO PilotInfo VALUES('I0001','Cap A','International','Bangladeshi','1000');
INSERT INTO PilotInfo VALUES('I0002','Cap B','International','Thai','2000');

-- Papers
INSERT INTO Airlines VALUES('A0001','Biman BD','BG377','BD','5STAR','International');
INSERT INTO Airlines VALUES('A0002','Thai Airways','TA-200','Thai','5 Star','International');

-- Aggregation
INSERT INTO Aggregation VALUES('C0001','I0001');
INSERT INTO Aggregation VALUES('C0002','I0002');
INSERT INTO Aggregation VALUES('C0003','I0003');
INSERT INTO Aggregation VALUES('C0004','I0004');
INSERT INTO Aggregation VALUES('C0005','I0005');
INSERT INTO Aggregation VALUES('C0006','I0006');

--Bookings 
INSERT INTO Bookings VALUES('B0001','Mr A','BD','TH','Biman BD','International');
INSERT INTO Bookings VALUES('B0002','Mr B','Thailand','BD','Thai Airways','International');


--Ratings
INSERT INTO Ratings VALUES('R0001','5Star','Biman BD','International');


--Passengers 
INSERT INTO Passengers VALUES('BP0001','Mr A','B0001','Biman BD','International','0177777777','pass1@gmail.com');
INSERT INTO Passengers VALUES('BP0002','Mr Y','B0002','Qatar Air','International','0188888888','pass2@gmail.com');

-- Ticketing
INSERT INTO Ticketing1 VALUES('T0001','B0001');
INSERT INTO Ticketing1 VALUES('T0002','B0002');

-- Ticketing
INSERT INTO Ticketing2 VALUES('T0003','B0003','05-jan-2023');
INSERT INTO Ticketing2 VALUES('T0004','B0004','07-jan-2023');
INSERT INTO Ticketing2 VALUES('T0005','B0005','12-jan-2023');
INSERT INTO Ticketing2 VALUES('T0006','B0006','08-jan-2023');

-- Saving all in database





commit;