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
    AirlineID varchar(100),
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
    PassengerName varchar(200),
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
    FlyingDate DATE,
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
INSERT INTO PilotInfo VALUES('I0003','PilotInfo C','Domestic','Bangladeshi','1500');
INSERT INTO PilotInfo VALUES('I0004','PilotInfo D','Domestic','Thai','2000');
INSERT INTO PilotInfo VALUES('I0005','PilotInfo E','Domestic','Indian','4000');
INSERT INTO PilotInfo VALUES('I0006','PilotInfo F','Domestic','Bangladeshi','3000');

-- Papers
INSERT INTO Airlines VALUES('A0003','Biman BD AIR','BG-388','BD','4 Star','Domestic');
INSERT INTO Airlines VALUES('A0004','Thai Air Asia','TH-309','Thai','3 Star','Domestic');
INSERT INTO Airlines VALUES('A0005','Indigo Air','IN-207','India','4 Star','Domestic');
INSERT INTO Airlines VALUES('A0006','Novo Air','NV-107','BD','5 Star','Domestic');

-- Aggregation
INSERT INTO Aggregation VALUES('C0001','A0001');
INSERT INTO Aggregation VALUES('C0002','A0002');
INSERT INTO Aggregation VALUES('C0003','A0002');
INSERT INTO Aggregation VALUES('C0004','A0002');
INSERT INTO Aggregation VALUES('C0005','A0002');
INSERT INTO Aggregation VALUES('C0006','A0002');

--Bookings 
INSERT INTO Bookings VALUES('B0003','Mr C','Dhaka','Shylhet','Biman BD AIR','Domestic');
INSERT INTO Bookings VALUES('B0004','Mr D','Bangkok','Phuket','Thai Air Asia','Domestic');


--Ratings
INSERT INTO Ratings VALUES('R0002','3 Star','Thai Air Asia','Domestic');

--Passengers 
INSERT INTO Passengers VALUES('BP0101','Mr C','B0003','Biman BD AIR','Domestic','017888888','pass3@gmail.com');
INSERT INTO Passengers VALUES('BP0102','Mr Z','B0004','Novoair','Domestic','019999999','pass4@gmail.com');

-- Ticketing1
INSERT INTO Ticketing1 VALUES('T0001','22-jun-2022');
INSERT INTO Ticketing1 VALUES('T0002','01-jan-2023');

-- Ticketing2
INSERT INTO Ticketing2 VALUES('T0101','B0007','16-jun-2023');
INSERT INTO Ticketing2 VALUES('T0102','B0008','08-july-2023');

-- Saving all in database
commit;