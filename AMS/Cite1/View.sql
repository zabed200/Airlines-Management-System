CREATE OR REPLACE VIEW DataAirlines AS
SELECT * FROM Airlines 
UNION 
SELECT * FROM Airlines@cite2;

CREATE OR REPLACE VIEW DataPilotInfo AS
SELECT * FROM PilotInfo 
UNION 
SELECT * FROM PilotInfo@cite2;

CREATE OR REPLACE VIEW DataBookings AS
SELECT * FROM Bookings 
UNION 
SELECT * FROM Bookings@cite2;

CREATE OR REPLACE VIEW DataRatings AS
SELECT * FROM Ratings 
UNION 
SELECT * FROM Ratings@cite2;

CREATE OR REPLACE VIEW DataPassengers AS
SELECT * FROM Passengers 
UNION 
SELECT * FROM Passengers@cite2;


CREATE OR REPLACE VIEW Part1 AS
SELECT * FROM Aggregation; 

CREATE OR REPLACE VIEW Part2 AS 
SELECT * FROM Aggregation@cite2;

CREATE OR REPLACE VIEW DataAggregation AS
SELECT Part1.AggregateID, Part1.PilotID, Part2.AirlineID 
FROM Part1 JOIN Part2
ON  Part1.AggregateID = Part2.AggregateID;

------------------
CREATE OR REPLACE VIEW Part3 AS
SELECT * FROM Ticketing1; 

CREATE OR REPLACE VIEW Part4 AS 
SELECT * FROM Ticketing1@cite2;

CREATE OR REPLACE VIEW DataTicketing1 AS
SELECT Part3.TicketID, Part3.BookingID, Part4.FlyingDate 
FROM Part3 JOIN Part4
ON  Part3.TicketID = Part4.TicketID;


CREATE OR REPLACE VIEW DataTicketing2 AS
SELECT * FROM Ticketing2
UNION 
SELECT * FROM Ticketing2@cite2;


CREATE OR REPLACE VIEW DataTicketing AS
SELECT * FROM DataTicketing1
UNION 
SELECT * FROM DataTicketing2;

commit;