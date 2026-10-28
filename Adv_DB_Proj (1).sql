create database Adv_DB_Project

use Adv_DB_Project

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Airline (
    AirlineID INT PRIMARY KEY IDENTITY,
    AirlineName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Airport (
    AirportID INT PRIMARY KEY IDENTITY,
    AirportName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Flight (
    FlightID INT PRIMARY KEY IDENTITY,
    AirlineID INT,
    FromAirportID INT,
    ToAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Price DECIMAL(10,2),
    FOREIGN KEY (AirlineID) REFERENCES Airline(AirlineID),
    FOREIGN KEY (FromAirportID) REFERENCES Airport(AirportID),
    FOREIGN KEY (ToAirportID) REFERENCES Airport(AirportID)
);

CREATE TABLE Seat (
    SeatID INT PRIMARY KEY IDENTITY,
    FlightID INT,
    SeatNumber VARCHAR(10),
    Status VARCHAR(20),
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY IDENTITY,
    UserID INT,
    FlightID INT,
    SeatID INT NULL,
    BookingDate DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
    FOREIGN KEY (SeatID) REFERENCES Seat(SeatID)
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY IDENTITY,
    BookingID INT,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

INSERT INTO Users (Name, Email, Phone) VALUES
('User1','u1@mail.com','0100000001'), ('User2','u2@mail.com','0100000002'), ('User3','u3@mail.com','0100000003'), ('User4','u4@mail.com','0100000004'),
('User5','u5@mail.com','0100000005'), ('User6','u6@mail.com','0100000006'), ('User7','u7@mail.com','0100000007'), ('User8','u8@mail.com','0100000008'),
('User9','u9@mail.com','0100000009'), ('User10','u10@mail.com','0100000010'), ('User11','u11@mail.com','0100000011'), ('User12','u12@mail.com','0100000012'),
('User13','u13@mail.com','0100000013'), ('User14','u14@mail.com','0100000014'), ('User15','u15@mail.com','0100000015'), ('User16','u16@mail.com','0100000016'),
('User17','u17@mail.com','0100000017'), ('User18','u18@mail.com','0100000018'), ('User19','u19@mail.com','0100000019'), ('User20','u20@mail.com','0100000020'),
('User21','u21@mail.com','0100000021'), ('User22','u22@mail.com','0100000022'), ('User23','u23@mail.com','0100000023'), ('User24','u24@mail.com','0100000024'),
('User25','u25@mail.com','0100000025'), ('User26','u26@mail.com','0100000026'), ('User27','u27@mail.com','0100000027'), ('User28','u28@mail.com','0100000028'),
('User29','u29@mail.com','0100000029'), ('User30','u30@mail.com','0100000030'), ('User31','u31@mail.com','0100000031'), ('User32','u32@mail.com','0100000032'),
('User33','u33@mail.com','0100000033'), ('User34','u34@mail.com','0100000034'), ('User35','u35@mail.com','0100000035'), ('User36','u36@mail.com','0100000036'),
('User37','u37@mail.com','0100000037'), ('User38','u38@mail.com','0100000038'), ('User39','u39@mail.com','0100000039'), ('User40','u40@mail.com','0100000040');

INSERT INTO Airline (AirlineName, Country) VALUES
('Airline1','Egypt'),('Airline2','UAE'),('Airline3','Qatar'),('Airline4','Turkey'),('Airline5','Germany'),
('Airline6','Egypt'),('Airline7','UAE'),('Airline8','Qatar'),('Airline9','Turkey'),('Airline10','Germany'),
('Airline11','Egypt'),('Airline12','UAE'),('Airline13','Qatar'),('Airline14','Turkey'),('Airline15','Germany'),
('Airline16','Egypt'),('Airline17','UAE'),('Airline18','Qatar'),('Airline19','Turkey'),('Airline20','Germany'),
('Airline21','Egypt'),('Airline22','UAE'),('Airline23','Qatar'),('Airline24','Turkey'),('Airline25','Germany'),
('Airline26','Egypt'),('Airline27','UAE'),('Airline28','Qatar'),('Airline29','Turkey'),('Airline30','Germany'),
('Airline31','Egypt'),('Airline32','UAE'),('Airline33','Qatar'),('Airline34','Turkey'),('Airline35','Germany'),
('Airline36','Egypt'),('Airline37','UAE'),('Airline38','Qatar'),('Airline39','Turkey'),('Airline40','Germany');

INSERT INTO Airport (AirportName, City, Country) VALUES
('Airport1','City1','Egypt'),('Airport2','City2','UAE'),('Airport3','City3','USA'),('Airport4','City4','France'),
('Airport5','City5','Egypt'),('Airport6','City6','UAE'),('Airport7','City7','USA'),('Airport8','City8','France'),
('Airport9','City9','Egypt'),('Airport10','City10','UAE'),('Airport11','City11','USA'),('Airport12','City12','France'),
('Airport13','City13','Egypt'),('Airport14','City14','UAE'),('Airport15','City15','USA'),('Airport16','City16','France'),
('Airport17','City17','Egypt'),('Airport18','City18','UAE'),('Airport19','City19','USA'),('Airport20','City20','France'),
('Airport21','City21','Egypt'),('Airport22','City22','UAE'),('Airport23','City23','USA'),('Airport24','City24','France'),
('Airport25','City25','Egypt'),('Airport26','City26','UAE'),('Airport27','City27','USA'),('Airport28','City28','France'),
('Airport29','City29','Egypt'),('Airport30','City30','UAE'),('Airport31','City31','USA'),('Airport32','City32','France'),
('Airport33','City33','Egypt'),('Airport34','City34','UAE'),('Airport35','City35','USA'),('Airport36','City36','France'),
('Airport37','City37','Egypt'),('Airport38','City38','UAE'),('Airport39','City39','USA'),('Airport40','City40','France');

INSERT INTO Flight (AirlineID, FromAirportID, ToAirportID, DepartureTime, ArrivalTime, Price) VALUES
(1,1,2,GETDATE(),DATEADD(hour,3,GETDATE()),200), (2,2,3,GETDATE(),DATEADD(hour,3,GETDATE()),220), (3,3,4,GETDATE(),DATEADD(hour,3,GETDATE()),240),
(4,4,5,GETDATE(),DATEADD(hour,3,GETDATE()),260), (5,5,6,GETDATE(),DATEADD(hour,3,GETDATE()),280), (6,6,7,GETDATE(),DATEADD(hour,3,GETDATE()),300),
(7,7,8,GETDATE(),DATEADD(hour,3,GETDATE()),320), (8,8,9,GETDATE(),DATEADD(hour,3,GETDATE()),340), (9,9,10,GETDATE(),DATEADD(hour,3,GETDATE()),360),
(10,10,11,GETDATE(),DATEADD(hour,3,GETDATE()),380), (11,11,12,GETDATE(),DATEADD(hour,3,GETDATE()),400), (12,12,13,GETDATE(),DATEADD(hour,3,GETDATE()),420),
(13,13,14,GETDATE(),DATEADD(hour,3,GETDATE()),440), (14,14,15,GETDATE(),DATEADD(hour,3,GETDATE()),460), (15,15,16,GETDATE(),DATEADD(hour,3,GETDATE()),480),
(16,16,17,GETDATE(),DATEADD(hour,3,GETDATE()),500), (17,17,18,GETDATE(),DATEADD(hour,3,GETDATE()),520), (18,18,19,GETDATE(),DATEADD(hour,3,GETDATE()),540),
(19,19,20,GETDATE(),DATEADD(hour,3,GETDATE()),560), (20,20,21,GETDATE(),DATEADD(hour,3,GETDATE()),580), (21,21,22,GETDATE(),DATEADD(hour,3,GETDATE()),600),
(22,22,23,GETDATE(),DATEADD(hour,3,GETDATE()),620), (23,23,24,GETDATE(),DATEADD(hour,3,GETDATE()),640), (24,24,25,GETDATE(),DATEADD(hour,3,GETDATE()),660),
(25,25,26,GETDATE(),DATEADD(hour,3,GETDATE()),680), (26,26,27,GETDATE(),DATEADD(hour,3,GETDATE()),700), (27,27,28,GETDATE(),DATEADD(hour,3,GETDATE()),720),
(28,28,29,GETDATE(),DATEADD(hour,3,GETDATE()),740), (29,29,30,GETDATE(),DATEADD(hour,3,GETDATE()),760), (30,30,31,GETDATE(),DATEADD(hour,3,GETDATE()),780),
(31,31,32,GETDATE(),DATEADD(hour,3,GETDATE()),800), (32,32,33,GETDATE(),DATEADD(hour,3,GETDATE()),820), (33,33,34,GETDATE(),DATEADD(hour,3,GETDATE()),840),
(34,34,35,GETDATE(),DATEADD(hour,3,GETDATE()),860), (35,35,36,GETDATE(),DATEADD(hour,3,GETDATE()),880), (36,36,37,GETDATE(),DATEADD(hour,3,GETDATE()),900),
(37,37,38,GETDATE(),DATEADD(hour,3,GETDATE()),920), (38,38,39,GETDATE(),DATEADD(hour,3,GETDATE()),940), (39,39,40,GETDATE(),DATEADD(hour,3,GETDATE()),960),
(40,40,1,GETDATE(),DATEADD(hour,3,GETDATE()),980);

-- ====================================================================
-- More Inserts for Window Functions
-- ====================================================================

INSERT INTO Flight
(AirlineID, FromAirportID, ToAirportID, DepartureTime, ArrivalTime, Price)
VALUES
-- egypt
(1, 1, 5, GETDATE(), DATEADD(hour,2,GETDATE()), 750),
(6, 5, 9, GETDATE(), DATEADD(hour,4,GETDATE()), 750), -- tie price
(11, 9, 13, GETDATE(), DATEADD(hour,5,GETDATE()), 1200), -- very expensive
(16, 13, 17, GETDATE(), DATEADD(hour,2,GETDATE()), 180), -- cheap

-- UAE
(2, 2, 6, GETDATE(), DATEADD(hour,3,GETDATE()), 950),
(7, 6, 10, GETDATE(), DATEADD(hour,6,GETDATE()), 450),

-- qatar
(3, 3, 7, GETDATE(), DATEADD(hour,4,GETDATE()), 1100),
(8, 7, 11, GETDATE(), DATEADD(hour,2,GETDATE()), 1100), -- tie

-- germany
(5, 5, 15, GETDATE(), DATEADD(hour,7,GETDATE()), 1500);


INSERT INTO Seat (FlightID, SeatNumber, Status) VALUES
(1,'S1','Available'),(2,'S2','Booked'),(3,'S3','Available'),(4,'S4','Available'),
(5,'S5','Booked'),(6,'S6','Available'),(7,'S7','Available'),(8,'S8','Booked'),
(9,'S9','Available'),(10,'S10','Available'),(11,'S11','Booked'),(12,'S12','Available'),
(13,'S13','Available'),(14,'S14','Booked'),(15,'S15','Available'),(16,'S16','Available'),
(17,'S17','Booked'),(18,'S18','Available'),(19,'S19','Available'),(20,'S20','Booked'),
(21,'S21','Available'),(22,'S22','Available'),(23,'S23','Booked'),(24,'S24','Available'),
(25,'S25','Available'),(26,'S26','Booked'),(27,'S27','Available'),(28,'S28','Available'),
(29,'S29','Booked'),(30,'S30','Available'),(31,'S31','Available'),(32,'S32','Booked'),
(33,'S33','Available'),(34,'S34','Available'),(35,'S35','Booked'),(36,'S36','Available'),
(37,'S37','Available'),(38,'S38','Booked'),(39,'S39','Available'),(40,'S40','Available');

INSERT INTO Booking (UserID, FlightID, BookingDate) VALUES
(1,1,GETDATE()),(2,2,GETDATE()),(3,3,GETDATE()),(4,4,GETDATE()),
(5,5,GETDATE()),(6,6,GETDATE()),(7,7,GETDATE()),(8,8,GETDATE()),
(9,9,GETDATE()),(10,10,GETDATE()),(11,11,GETDATE()),(12,12,GETDATE()),
(13,13,GETDATE()),(14,14,GETDATE()),(15,15,GETDATE()),(16,16,GETDATE()),
(17,17,GETDATE()),(18,18,GETDATE()),(19,19,GETDATE()),(20,20,GETDATE()),
(21,21,GETDATE()),(22,22,GETDATE()),(23,23,GETDATE()),(24,24,GETDATE()),
(25,25,GETDATE()),(26,26,GETDATE()),(27,27,GETDATE()),(28,28,GETDATE()),
(29,29,GETDATE()),(30,30,GETDATE()),(31,31,GETDATE()),(32,32,GETDATE()),
(33,33,GETDATE()),(34,34,GETDATE()),(35,35,GETDATE()),(36,36,GETDATE()),
(37,37,GETDATE()),(38,38,GETDATE()),(39,39,GETDATE()),(40,40,GETDATE()),
(1,2,GETDATE()),(2,3,GETDATE()),(3,4,GETDATE()),(4,5,GETDATE()),
(5,6,GETDATE()),(6,7,GETDATE()),(7,8,GETDATE()),(8,9,GETDATE()),
(9,10,GETDATE()),(10,11,GETDATE()),(11,12,GETDATE()),(12,13,GETDATE()),
(13,14,GETDATE()),(14,15,GETDATE()),(15,16,GETDATE()),(16,17,GETDATE()),
(17,18,GETDATE()),(18,19,GETDATE()),(19,20,GETDATE()),(20,21,GETDATE());


INSERT INTO Payment (BookingID, Amount, PaymentMethod) VALUES
(1,200,'Card'),(2,220,'Cash'),(3,240,'Card'),(4,260,'Cash'),
(5,280,'Card'),(6,300,'Cash'),(7,320,'Card'),(8,340,'Cash'),
(9,360,'Card'),(10,380,'Cash'),(11,400,'Card'),(12,420,'Cash'),
(13,440,'Card'),(14,460,'Cash'),(15,480,'Card'),(16,500,'Cash'),
(17,520,'Card'),(18,540,'Cash'),(19,560,'Card'),(20,580,'Cash'),
(21,600,'Card'),(22,620,'Cash'),(23,640,'Card'),(24,660,'Cash'),
(25,680,'Card'),(26,700,'Cash'),(27,720,'Card'),(28,740,'Cash'),
(29,760,'Card'),(30,780,'Cash'),(31,800,'Card'),(32,820,'Cash'),
(33,840,'Card'),(34,860,'Cash'),(35,880,'Card'),(36,900,'Cash'),
(37,920,'Card'),(38,940,'Cash'),(39,960,'Card'),(40,980,'Cash');

BEGIN TRANSACTION;

SELECT * 
FROM Seat 
WHERE FlightID = 1 AND Status = 'Available';


UPDATE Seat
SET Status = 'Booked'
WHERE SeatID = 1;

INSERT INTO Booking (UserID, FlightID, BookingDate)
VALUES (1, 1, GETDATE());

INSERT INTO Payment (BookingID, Amount, PaymentMethod)
VALUES (41, 200, 'Card');

COMMIT;

SELECT * FROM Seat WHERE SeatID = 1;


-- ====================================================================
-- RECOVERY
-- ====================================================================

BEGIN TRANSACTION;

UPDATE Seat
SET Status = 'Booked'
WHERE SeatID = 3;


-- wrong insert (forcing error)
INSERT INTO Payment (BookingID, Amount, PaymentMethod)
VALUES (9999, 300, 'Card');

ROLLBACK;

SELECT * FROM Seat WHERE SeatID = 3;


BEGIN TRANSACTION;

UPDATE Seat
SET Status = 'Booked'
WHERE SeatID = 10;

SELECT * FROM Seat WHERE SeatID = 10;

ROLLBACK;

SELECT * FROM Seat WHERE SeatID = 10;

GO
-- ====================================================================
-- STORED PROCEDURE
-- ====================================================================

CREATE PROCEDURE BookFlightFull
    @UserID INT,
    @FlightID INT,
    @SeatID INT,
    @PaymentMethod VARCHAR(50)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

	    DECLARE @SeatStatus VARCHAR(20);
        DECLARE @Price DECIMAL(10,2);
        DECLARE @BookingID INT;

		-- 1. Check seat status
        SELECT @SeatStatus = Status 
        FROM Seat
        WHERE SeatID = @SeatID AND FlightID = @FlightID;

		 IF @SeatStatus IS NULL  --seat does not exist
         BEGIN
            PRINT 'Seat does not exist for this flight';
            ROLLBACK;
            RETURN;
        END

		IF @SeatStatus = 'Booked'
        BEGIN
            PRINT 'Seat already booked';
            ROLLBACK;
            RETURN;
        END

		-- 2. Get flight price
        SELECT @Price = Price
        FROM Flight
        WHERE FlightID = @FlightID;

		-- 3. Update seat
        UPDATE Seat
        SET Status = 'Booked'
        WHERE SeatID = @SeatID;

		-- 4. Insert booking
        INSERT INTO Booking (UserID, FlightID, BookingDate)
        VALUES (@UserID, @FlightID, GETDATE());

		-- Get last BookingID
        SET @BookingID = SCOPE_IDENTITY();  --gets the last inserted id

		-- 5. Insert payment
        INSERT INTO Payment (BookingID, Amount, PaymentMethod)
        VALUES (@BookingID, @Price, @PaymentMethod);

        COMMIT;

        PRINT 'Booking completed successfully';

    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Error: ' + ERROR_MESSAGE();
    END CATCH
END;

EXEC BookFlightFull 1, 1, 1, 'Card';

-- ====================================================================
-- PERFORMANCE TUNING
-- ====================================================================

CREATE INDEX idx_flight_airline_price
ON Flight(AirlineID, Price DESC);

CREATE INDEX idx_airline_country
ON Airline(Country);

-- ====================================================================
-- WINDOW FUNCTION (rank el flights by price l kol airline country)
-- ====================================================================
SELECT
    f.FlightID,
    a.AirlineName,
    a.Country AS AirlineCountry,
    f.Price,
    RANK() OVER (
        PARTITION BY a.Country
        ORDER BY f.Price DESC
    ) AS PriceRankInCountry
FROM Flight f
JOIN Airline a ON f.AirlineID = a.AirlineID;


-- ====================================================================
--   DATA WAREHOUSE TABLES
-- ====================================================================

CREATE TABLE Dim_User (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Dim_Airline (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Dim_Airport (
    AirportID INT PRIMARY KEY,
    AirportName VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Dim_Flight (
    FlightID INT PRIMARY KEY,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Price DECIMAL(10,2)
);

CREATE TABLE Dim_Seat (
    SeatID INT PRIMARY KEY,
    FlightID INT,
    SeatNumber VARCHAR(10),
    Status VARCHAR(20)
);

CREATE TABLE Dim_Payment (
    PaymentID INT PRIMARY KEY,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10,2)
);

-- ====================================================================
-- FACT TABLE 
-- ====================================================================

CREATE TABLE Fact_Booking (
    BookingID INT PRIMARY KEY,
    UserID INT,
    FlightID INT,
    SeatID INT,
    AirlineID INT,
    FromAirportID INT,
    ToAirportID INT,
    PaymentID INT,
    BookingDate DATETIME,
    TicketPrice DECIMAL(10,2),

    FOREIGN KEY (UserID) REFERENCES Dim_User(UserID),
    FOREIGN KEY (FlightID) REFERENCES Dim_Flight(FlightID),
    FOREIGN KEY (SeatID) REFERENCES Dim_Seat(SeatID),
    FOREIGN KEY (AirlineID) REFERENCES Dim_Airline(AirlineID),
    FOREIGN KEY (FromAirportID) REFERENCES Dim_Airport(AirportID),
    FOREIGN KEY (ToAirportID) REFERENCES Dim_Airport(AirportID),
    FOREIGN KEY (PaymentID) REFERENCES Dim_Payment(PaymentID)
);




INSERT INTO Dim_User (UserID, Name, Email, Phone)

SELECT
    UserID,
    Name,
    Email,
    Phone
FROM Users;




INSERT INTO Dim_Airline (AirlineID, AirlineName, Country)

SELECT
    AirlineID,
    AirlineName,
    Country
FROM Airline;





INSERT INTO Dim_Airport (AirportID, AirportName, City, Country)

SELECT
    AirportID,
    AirportName,
    City,
    Country
FROM Airport;





INSERT INTO Dim_Payment (PaymentID, PaymentMethod, Amount)

SELECT
    PaymentID,
    PaymentMethod,
    Amount
FROM Payment;





INSERT INTO Dim_Seat (SeatID, FlightID, SeatNumber, Status)

SELECT
    SeatID,
    FlightID,
    SeatNumber,
    Status
FROM Seat;




INSERT INTO Dim_Flight
(
    FlightID,
    DepartureTime,
    ArrivalTime,
    Price
)

SELECT
    FlightID,
    DepartureTime,
    ArrivalTime,
    Price
FROM Flight;







-- ====================================================================
-- LOAD FACT_BOOKING
-- ====================================================================

INSERT INTO Fact_Booking
(
    BookingID,
    UserID,
    FlightID,
    SeatID,
    AirlineID,
    FromAirportID,
    ToAirportID,
    PaymentID,
    BookingDate,
    TicketPrice
)
SELECT
    b.BookingID,
    b.UserID,
    b.FlightID,
    b.SeatID,
    f.AirlineID,
    f.FromAirportID,
    f.ToAirportID,
    p.PaymentID,
    b.BookingDate,
    f.Price
FROM Booking b
JOIN Flight f ON b.FlightID = f.FlightID
JOIN Payment p ON p.BookingID = b.BookingID;

-- ====================================================================
-- Analytical queries
-- ====================================================================

--1. Total Revenue per Airline
SELECT 
    a.AirlineName,
    SUM(fb.TicketPrice) AS TotalRevenue
FROM Fact_Booking fb
JOIN Dim_Airline a
    ON fb.AirlineID = a.AirlineID
GROUP BY a.AirlineName
ORDER BY TotalRevenue DESC;


--2. Number of Bookings per Airline
SELECT 
    a.AirlineName,
    COUNT(fb.BookingID) AS TotalBookings
FROM Fact_Booking fb
JOIN Dim_Airline a
    ON fb.AirlineID = a.AirlineID
GROUP BY a.AirlineName
ORDER BY TotalBookings DESC;


--3. Most Popular Destination Airports
SELECT 
    ap.AirportName,
    ap.City,
    COUNT(fb.BookingID) AS TotalArrivals
FROM Fact_Booking fb
JOIN Dim_Airport ap
    ON fb.ToAirportID = ap.AirportID
GROUP BY ap.AirportName, ap.City
ORDER BY TotalArrivals DESC;


--4. Revenue by Payment Method
SELECT 
    p.PaymentMethod,
    SUM(p.Amount) AS TotalRevenue
FROM Fact_Booking fb
JOIN Dim_Payment p
    ON fb.PaymentID = p.PaymentID
GROUP BY p.PaymentMethod;


--5. Average Ticket Price per Airline
SELECT 
    a.AirlineName,
    AVG(fb.TicketPrice) AS AvgTicketPrice
FROM Fact_Booking fb
JOIN Dim_Airline a
    ON fb.AirlineID = a.AirlineID
GROUP BY a.AirlineName
ORDER BY AvgTicketPrice DESC;