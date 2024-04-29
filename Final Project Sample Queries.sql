CREATE DATABASE Project;

CREATE TABLE Office (
    OfficeNumber INT PRIMARY KEY,
    Location VARCHAR(255),
    City VARCHAR(255),
    Zipcode INT(5),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    Name VARCHAR(255),
    ClassSchedule VARCHAR(255),
    Address VARCHAR(255),
    OfficeNumber INT,
    FOREIGN KEY (OfficeNumber) REFERENCES Office(OfficeNumber)
);

CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Administrators (
    AdministratorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    OfficeNumber INT,
    ManagerID INT,
    FOREIGN KEY (OfficeNumber) REFERENCES Office(OfficeNumber),
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID)
);

CREATE TABLE ClassSessions (
    SessionID INT PRIMARY KEY,
    Schedule VARCHAR(255),
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID),
    RoomNumber VARCHAR(255)
);

CREATE TABLE Cars (
    PlateNumber VARCHAR(255) PRIMARY KEY,
    YearBuilt INT,
    Type VARCHAR(255),
    MileageCovered INT,
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

CREATE TABLE Clients (
    Clientid INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    ContactDetails VARCHAR(255),
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

CREATE TABLE TestSchedules (
    TestScheduleID INT PRIMARY KEY,
    Schedule VARCHAR(255),
    Clientid INT,
    FOREIGN KEY (Clientid) REFERENCES Clients(Clientid)
);

CREATE TABLE Mileage (
    Mileageld INT PRIMARY KEY,
    Maintenance VARCHAR(255),
    EngineSize INT,
    WeightOfCar INT,
    FuelEfficiency INT,
    PlateNumber VARCHAR(255),
    FOREIGN KEY (PlateNumber) REFERENCES Cars(PlateNumber)
);

CREATE TABLE ApplicationForm (
    ApplicationID INT PRIMARY KEY,
    Details VARCHAR(200),
    ClientId INT,
    FOREIGN KEY (ClientId) REFERENCES Clients(ClientId)
);




INSERT INTO Office (OfficeNumber, Location, City, Zipcode, PhoneNumber)
VALUES
  (1, 'Main Office', 'Cityscape', 89923, '787-878-3333'),
  (2, 'Branch Office', 'Markshire', 67890, '987-654-3210'),
  (3, 'Another Branch Office', 'Mark', 67990, '917-654-3211'),
  (4, 'Main Office', 'Cityscape', 45039, '990-989-2343'),
  (5, 'Main Office', 'New City', 76767, '982-233-2433'),
  (6, 'Branch Office', 'Marskhire', 78278,'565-959-9633'),
  (7, 'Tech Park Office', 'Tech City', 76543, '777-777-7777'),
  (8, 'Industrial Office', 'Industry Town', 87654, '888-888-8888'),
  (9, 'Rural Office', 'Countryside', 34567, '999-999-9999'),
  (10, 'Harbor Office', 'Harbor City', 23456, '000-000-0000');



INSERT INTO Managers (ManagerID, Name, Address, PhoneNumber)
VALUES
  (11, 'Joseph', '123 Harbour St', '111-222-3333'),
  (12, 'Jane', '456 Skeeda St', '444-555-6666'),
  (13, 'Jake', '789 Octopuel St', '777-888-9999'),
  (14, 'Dalia', '321 Skeeda St', '111-999-7777'),
  (15, 'Frd', '654 Harbour St', '333-444-5555'),
  (16, 'Jessica', '987 Stragash St', '222-666-4444'),
  (17, 'Ohana', '234 Stragash St', '555-333-2222'),
  (18, 'Joan', '567 Skeeda St', '888-777-6666'),
  (19, 'Tony', '876 Cottontail St', '999-555-4444'),
  (20, 'Jill', '345 Taoshi St', '000-111-2222');
  


INSERT INTO Instructors (InstructorID, Name, ClassSchedule, Address, OfficeNumber)
VALUES
  (21, 'Blub', 'Morning Classes', '789 Oogway St', 1),
  (22, 'Alicia', 'Afternoon Classes', '321 Uncharted St', 2),
  (23, 'Schwarz', 'Evening Classes', '654 Telekin St', 3),
  (24, 'Diana', 'Weekend Classes', '987 Jogesh St', 4),
  (25, 'Ed', 'Online Classes', '234 Andher St', 5),
  (26, 'Shrek', 'Special Workshops', '567 Citytip St', 6),
  (27, 'Gingery', 'Intensive Courses', '876 Oogway St', 7),
  (28, 'Holland', 'Accelerated Programs', '345 Shifu St', 8),
  (29, 'Hemsworth', 'Flexible Schedules', '901 Telekin St', 9),
  (30, 'Justin', 'Customized Training', '112 Mala St', 10);
  


INSERT INTO Administrators (AdministratorID, Name, Address, PhoneNumber, OfficeNumber, ManagerID)
VALUES
  (31, 'Admin One', '111 Training St', '111-111-1111', 1, 11),
  (32, 'Admin Two', '222 Andher St', '222-222-2222', 2, 12),
  (33, 'Admin Three', '333 Jogesh St', '333-333-3333', 3, 13),
  (34, 'Admin Four', '444 Tiana St', '444-444-4444', 4, 14),
  (35, 'Admin Five', '555 Hampton St', '555-555-5555', 5, 15),
  (36, 'Admin Six', '666 Milpitas', '666-666-6666', 6, 16),
  (37, 'Admin Seven', '777 Stan St', '777-777-7777', 7, 17),
  (38, 'Admin Eight', '888 Ford St', '888-888-8888', 8, 18),
  (39, 'Admin Nine', '999 Jiggle St', '999-999-9999', 9, 19),
  (40, 'Admin Ten', '000 Ten St', '000-000-0000', 10, 20);

  


INSERT INTO ClassSessions (SessionID, Schedule, InstructorID, RoomNumber)
VALUES
  (41, 'Monday 9 AM', 21, 'Room 101'),
  (42, 'Wednesday 2 PM', 22, 'Room 202'),
  (43, 'Friday 10 AM', 23, 'Room 303'),
  (44, 'Tuesday 4 PM', 24, 'Room 404'),
  (45, 'Thursday 1 PM', 25, 'Room 505'),
  (46, 'Saturday 11 AM', 26, 'Room 606'),
  (47, 'Monday 6 PM', 27, 'Room 707'),
  (48, 'Wednesday 3 PM', 28, 'Room 808'),
  (49, 'Friday 12 PM', 29, 'Room 909'),
  (50, 'Tuesday 8 AM', 30, 'Room 1001');


INSERT INTO Cars (PlateNumber, YearBuilt, Type, MileageCovered, InstructorID)
VALUES
  ('ABC123', 2019, 'Sedan', 20000,21),
  ('XYZ789', 2020, 'SUV', 15000,22),
  ('LMN456', 2018, 'Hatchback', 18000,23),
  ('PQR789', 2021, 'Convertible', 12000,24),
  ('JKL321', 2017, 'Coupe', 25000,25),
  ('DEF456', 2019, 'Sedan', 22000,26),
  ('GHI789', 2022, 'SUV', 13000,27),
  ('MNO123', 2016, 'Truck', 30000,28),
  ('UVW456', 2020, 'Van', 16000,29),
  ('RST789', 2015, 'Sedan', 28000,30);


INSERT INTO Clients (Clientid, Name, Address, ContactDetails, InstructorID)
VALUES
  (51, 'Client One', '111 St', '111-111-1111',21),
  (52, 'Client Two', '222  St', '222-222-2222',22),
  (53, 'Client Three', '333 St', '333-333-3333',23),
  (54, 'Client Four', '444  St', '444-444-4444',24),
  (55, 'Client Five', '555 St', '555-555-5555',25),
  (56, 'Client Six', '666  St', '666-666-6666',26),
  (57, 'Client Seven', '777 St', '777-777-7777',27),
  (58, 'Client Eight', '888 St', '888-888-8888',28),
  (59, 'Client Nine', '999  St', '999-999-9999',29),
  (60, 'Client Ten', '000  St', '000-000-0000',30);


INSERT INTO TestSchedules (TestScheduleID, Schedule, Clientid)
VALUES
  (61, 'Friday 3 PM',51),
  (62, 'Saturday 10 AM',52),
  (63, 'Thursday 2 PM',53),
  (64, 'Monday 11 AM',54),
  (65, 'Wednesday 5 PM',55),
  (66, 'Saturday 1 PM',56),
  (67, 'Tuesday 9 AM',57),
  (68, 'Friday 4 PM',58),
  (69, 'Monday 2 PM',59),
  (70, 'Thursday 11 AM',60);


INSERT INTO Mileage (Mileageld, Maintenance, EngineSize, WeightOfCar, FuelEfficiency, PlateNumber)
VALUES
  (71, 'Regular Checkup', 2.0, 3000, 25, 'ABC123'),
  (72, 'Oil Change', 2.5, 3500, 22, 'XYZ789'),
  (73, 'Tire Rotation', 2.2, 3200, 24, 'LMN456'),
  (74, 'Brake Inspection', 2.8, 3800, 20, 'PQR789'),
  (75, 'Air Filter Replacement', 2.1, 3100, 26, 'JKL321'),
  (76, 'Transmission Flush', 2.3, 3300, 23, 'DEF456'),
  (77, 'Coolant Replacement', 2.4, 3400, 21, 'GHI789'),
  (78, 'Battery Check', 2.7, 3700, 19, 'MNO123'),
  (79, 'Alignment', 2.6, 3600, 27, 'UVW456'),
  (80, 'Spark Plug Replacement', 2.9, 3900, 18, 'RST789');
  
INSERT INTO ApplicationForm (ApplicationID, Details, ClientId)
VALUES
  (1, 'Application Details 1', 51),
  (2, 'Application Details 2', 52),
  (3, 'Application Details 3', 53),
  (4, 'Application Details 4', 54),
  (5, 'Application Details 5', 55),
  (6, 'Application Details 6', 56),
  (7, 'Application Details 7', 57),
  (8, 'Application Details 8', 58),
  (9, 'Application Details 9', 59),
  (10, 'Application Details 10', 60);


  
  
  select * from Office;
  select * from Instructors;
  select * from Managers;
  select * from Administrators;
  select * from ClassSessions;
  select * from Cars;
  select * from Clients;
  select * from TestSchedules;
  select * from mileage;
  select * from applicationform;
  
  
SELECT c.Name, c.ContactDetails
FROM Clients c
JOIN TestSchedules ts ON c.ClientId = ts.ClientId
JOIN ClassSessions cs ON ts.Schedule = cs.Schedule
WHERE cs.Schedule LIKE 'Wednesday%';


SELECT DISTINCT i.Name
FROM Instructors i JOIN Cars c 
ON i.InstructorId = c.InstructorId
WHERE c.mileagecovered > '30 MPG';


SELECT o.OfficeNumber, COUNT(a.AdministratorId) AS NumberOfAdministrators
FROM Office o LEFT JOIN Administrators a 
ON o.OfficeNumber = a.OfficeNumber
GROUP BY o.OfficeNumber;

SELECT af.ApplicationId, af.Details, af.ClientId, ts.Schedule
FROM ApplicationForm af
JOIN TestSchedules ts ON af.ClientId = ts.ClientId;


SELECT m.Maintenance, AVG(MileageCovered) AS AverageMileage
FROM Mileage m
join cars c on m.PlateNumber = c.PlateNumber
GROUP BY Maintenance;



  