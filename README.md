
# Smooth Driving College Of Motoring

Smooth Driving College Of Motoring is a database modeling and implementation project aimed at managing the operations of a fictional driving school. This project includes tables representing various entities such as offices, instructors, managers, administrators, class sessions, cars, clients, test schedules, mileage, and application forms. The database schema allows for the efficient organization and management of resources related to driving education and testing.


## Database Schema

The database schema consists of the following tables:

- Office: Stores information about the different offices of the driving school.
- Instructors: Contains details of the driving instructors employed by the school.
- Managers: Stores information about the managers overseeing different offices.
- Administrators: Stores details of administrators associated with the driving school.
- ClassSessions: Contains information about the class sessions scheduled by instructors.
- Cars: Stores details of the vehicles used for training purposes.
- Clients: Contains information about the clients enrolled for driving classes.
- TestSchedules: Stores details of the test schedules for clients.
- Mileage: Contains information about the mileage and maintenance of vehicles.
- ApplicationForm: Stores details of application forms submitted by clients.
## Sample Queries

Here are some sample queries that can be executed on the database:

1. Retrieve the names and contact details of clients scheduled for classes on Wednesdays.

**SELECT c.Name, c.ContactDetails
FROM Clients c
JOIN TestSchedules ts ON c.ClientId = ts.ClientId
JOIN ClassSessions cs ON ts.Schedule = cs.Schedule
WHERE cs.Schedule LIKE 'Wednesday%';**

2. Find the names of instructors associated with cars having mileage greater than 30 MPG.

**SELECT DISTINCT i.Name
FROM Instructors i JOIN Cars c 
ON i.InstructorId = c.InstructorId
WHERE c.mileagecovered > '30 MPG';**

3. Count the number of administrators in each office.

**SELECT o.OfficeNumber, COUNT(a.AdministratorId) AS NumberOfAdministrators
FROM Office o LEFT JOIN Administrators a 
ON o.OfficeNumber = a.OfficeNumber
GROUP BY o.OfficeNumber;**
## Installation

To set up the Smooth Driving College Of Motoring database, follow these steps:

1. **Download or clone the repository.**

2. **Import the provided SQL file into your preferred database management system.**

3. **Execute the SQL queries to create the database schema and insert sample data.**

4. **Run queries to interact with the database and perform various operations.**
## Contributors

- Abu Bakar Siddik
- Tesfaldet Yemaneab
- Simon Gezae
- Zainab Salia

## License

[MIT](https://choosealicense.com/licenses/mit/)

