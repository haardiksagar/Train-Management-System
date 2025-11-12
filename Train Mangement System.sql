CREATE DATABASE TrainManagement;
USE TrainManagement;

CREATE TABLE Train (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(50),
    source VARCHAR(50),
    destination VARCHAR(50),
    departure_time TIME,
    arrival_time TIME,
    fare DECIMAL(8,2)
);

CREATE TABLE Passenger (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    train_id INT,
    booking_date DATE,
    seat_number VARCHAR(10),
    FOREIGN KEY (passenger_id) REFERENCES Passenger(passenger_id),
    FOREIGN KEY (train_id) REFERENCES Train(train_id)
);

INSERT INTO Train VALUES
(101, 'Rajdhani Express', 'Delhi', 'Mumbai', '08:00:00', '20:30:00', 1550.00),
(102, 'Shatabdi Express', 'Delhi', 'Chandigarh', '07:15:00', '10:15:00', 650.00),
(103, 'Duronto Express', 'Mumbai', 'Kolkata', '09:30:00', '22:00:00', 1800.00),
(104, 'Gatimaan Express', 'Delhi', 'Agra', '08:10:00', '09:50:00', 400.00),
(105, 'Intercity Express', 'Chennai', 'Bangalore', '06:00:00', '10:30:00', 500.00),
(106, 'Jan Shatabdi Express', 'Bhopal', 'Delhi', '09:00:00', '17:30:00', 700.00),
(107, 'Superfast Express', 'Kolkata', 'Patna', '05:45:00', '12:15:00', 450.00),
(108, 'Double Decker Express', 'Jaipur', 'Delhi', '06:45:00', '12:00:00', 550.00),
(109, 'Vande Bharat Express', 'Delhi', 'Varanasi', '06:00:00', '14:00:00', 950.00),
(110, 'Tejas Express', 'Mumbai', 'Goa', '07:30:00', '15:00:00', 1200.00),
(111, 'Udyan Express', 'Mumbai', 'Bangalore', '08:30:00', '23:00:00', 1100.00),
(112, 'Goa Express', 'Delhi', 'Goa', '15:00:00', '09:30:00', 1300.00),
(113, 'Howrah Mail', 'Chennai', 'Kolkata', '14:00:00', '08:00:00', 1450.00),
(114, 'Nizamuddin Express', 'Pune', 'Delhi', '06:45:00', '23:15:00', 1600.00),
(115, 'Sabarmati Express', 'Ahmedabad', 'Varanasi', '10:00:00', '06:00:00', 1000.00),
(116, 'Kerala Express', 'Delhi', 'Thiruvananthapuram', '11:00:00', '23:00:00', 1850.00),
(117, 'Tamil Nadu Express', 'Chennai', 'Delhi', '07:00:00', '21:30:00', 1700.00),
(118, 'Gujarat Mail', 'Mumbai', 'Ahmedabad', '06:00:00', '12:00:00', 550.00),
(119, 'Punjab Mail', 'Mumbai', 'Amritsar', '07:30:00', '22:30:00', 1200.00),
(120, 'Deccan Queen', 'Pune', 'Mumbai', '07:00:00', '10:30:00', 450.00),
(121, 'Palace on Wheels', 'Delhi', 'Jaipur', '08:00:00', '12:00:00', 2500.00),
(122, 'Golden Chariot', 'Bangalore', 'Goa', '09:00:00', '16:00:00', 2400.00),
(123, 'Mysore Express', 'Chennai', 'Mysore', '05:45:00', '11:00:00', 600.00),
(124, 'Konark Express', 'Mumbai', 'Bhubaneswar', '08:00:00', '22:00:00', 1600.00),
(125, 'Falaknuma Express', 'Secunderabad', 'Kolkata', '07:00:00', '21:30:00', 1550.00),
(126, 'Ganga Express', 'Varanasi', 'Delhi', '06:00:00', '17:30:00', 800.00),
(127, 'Himalayan Queen', 'Delhi', 'Shimla', '06:30:00', '13:00:00', 700.00),
(128, 'Chennai Express', 'Mumbai', 'Chennai', '08:00:00', '21:00:00', 1700.00),
(129, 'Coastal Express', 'Mangalore', 'Chennai', '07:30:00', '20:00:00', 1250.00),
(130, 'Sundarban Express', 'Kolkata', 'Canning', '09:00:00', '10:30:00', 300.00),
(131, 'Padmavati Express', 'Delhi', 'Ajmer', '07:00:00', '13:00:00', 600.00),
(132, 'Ajanta Express', 'Hyderabad', 'Aurangabad', '06:45:00', '14:30:00', 850.00),
(133, 'Jhelum Express', 'Pune', 'Jammu', '10:00:00', '23:00:00', 1700.00),
(134, 'Ganga Sagar Express', 'Sealdah', 'Patna', '07:15:00', '14:00:00', 750.00),
(135, 'Kamayani Express', 'Lokmanya Tilak', 'Varanasi', '08:30:00', '22:30:00', 1200.00),
(136, 'Indore Express', 'Indore', 'Pune', '06:00:00', '18:30:00', 1100.00),
(137, 'Bharat Express', 'Delhi', 'Bhopal', '05:45:00', '12:30:00', 900.00),
(138, 'Arunachal Express', 'Delhi', 'Guwahati', '06:30:00', '20:30:00', 1800.00),
(139, 'Sealdah Express', 'Delhi', 'Kolkata', '07:30:00', '21:30:00', 1600.00),
(140, 'Sikkim Express', 'Kolkata', 'New Jalpaiguri', '09:30:00', '18:00:00', 950.00),
(141, 'Utkal Express', 'Puri', 'Delhi', '07:15:00', '22:45:00', 1650.00),
(142, 'Karnataka Express', 'Bangalore', 'Delhi', '08:00:00', '23:30:00', 1750.00),
(143, 'Andhra Express', 'Vijayawada', 'Hyderabad', '06:00:00', '11:30:00', 700.00),
(144, 'Odisha Express', 'Bhubaneswar', 'Delhi', '06:30:00', '21:30:00', 1600.00),
(145, 'Assam Express', 'Guwahati', 'Delhi', '07:00:00', '21:00:00', 1700.00),
(146, 'Sahyadri Express', 'Kolhapur', 'Mumbai', '06:15:00', '14:00:00', 800.00),
(147, 'Lucknow Mail', 'Delhi', 'Lucknow', '08:30:00', '15:30:00', 700.00),
(148, 'Avadh Express', 'Mumbai', 'Gorakhpur', '07:00:00', '23:30:00', 1500.00),
(149, 'Mahanagari Express', 'Mumbai', 'Varanasi', '10:00:00', '00:00:00', 1550.00),
(150, 'Pataliputra Express', 'Patna', 'Delhi', '06:45:00', '17:45:00', 900.00);

INSERT INTO Passenger VALUES
(1, 'Amit Sharma', 30, 'Male'),
(2, 'Priya Singh', 25, 'Female'),
(3, 'Ravi Kumar', 40, 'Male'),
(4, 'Neha Verma', 35, 'Female'),
(5, 'Arjun Mehta', 28, 'Male'),
(6, 'Sneha Patel', 22, 'Female'),
(7, 'Vikram Joshi', 45, 'Male'),
(8, 'Kiran Desai', 33, 'Female'),
(9, 'Anil Gupta', 38, 'Male'),
(10, 'Meena Iyer', 29, 'Female'),
(11, 'Rahul Nair', 26, 'Male'),
(12, 'Pooja Reddy', 31, 'Female'),
(13, 'Sandeep Rao', 34, 'Male'),
(14, 'Shalini Das', 24, 'Female'),
(15, 'Harish Yadav', 41, 'Male'),
(16, 'Kavita Bansal', 27, 'Female'),
(17, 'Manoj Tiwari', 36, 'Male'),
(18, 'Ritu Sharma', 32, 'Female'),
(19, 'Abhishek Jain', 29, 'Male'),
(20, 'Divya Kapoor', 23, 'Female');


INSERT INTO Booking VALUES
(201, 1, 101, '2025-11-01', 'A1-23'),
(202, 2, 104, '2025-11-02', 'B2-12'),
(203, 3, 103, '2025-11-03', 'C1-05'),
(204, 4, 102, '2025-11-01', 'D3-09'),
(205, 5, 105, '2025-11-04', 'E2-17'),
(206, 6, 108, '2025-11-02', 'F1-10'),
(207, 7, 109, '2025-11-03', 'G2-08'),
(208, 8, 110, '2025-11-04', 'H3-15'),
(209, 9, 111, '2025-11-05', 'I2-06'),
(210, 10, 112, '2025-11-06', 'J1-14'),
(211, 11, 113, '2025-11-07', 'K3-19'),
(212, 12, 114, '2025-11-08', 'L1-03'),
(213, 13, 115, '2025-11-09', 'M2-11'),
(214, 14, 116, '2025-11-10', 'N1-07'),
(215, 15, 117, '2025-11-11', 'O3-02'),
(216, 16, 118, '2025-11-12', 'P1-18'),
(217, 17, 119, '2025-11-13', 'Q2-21'),
(218, 18, 120, '2025-11-14', 'R3-04'),
(219, 19, 121, '2025-11-15', 'S2-25'),
(220, 20, 122, '2025-11-16', 'T1-16'),
(221, 1, 123, '2025-11-17', 'A2-09'),
(222, 3, 125, '2025-11-18', 'B3-13'),
(223, 5, 127, '2025-11-19', 'C2-07'),
(224, 7, 130, '2025-11-20', 'D1-10'),
(225, 9, 135, '2025-11-21', 'E3-15');



#Query

#View all trains
SELECT * FROM Train;

#List all passengers
SELECT * FROM Passenger;

#Show all bookings with passenger and train details
SELECT 
    b.booking_id,
    p.passenger_name,
    t.train_name,
    t.source,
    t.destination,
    b.booking_date,
    b.seat_number
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
JOIN Train t ON b.train_id = t.train_id;

#Find all trains from a specific location 
SELECT train_name, destination, departure_time
FROM Train
WHERE source = 'Delhi';

#Find all bookings for a specific passenger
SELECT * 
FROM Booking 
WHERE passenger_id = 1;

#Find total revenue generated from all bookings
SELECT SUM(t.fare) AS total_revenue
FROM Booking b
JOIN Train t ON b.train_id = t.train_id;

#List all passengers traveling on a specific date
SELECT p.passenger_name, t.train_name, b.booking_date
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
JOIN Train t ON b.train_id = t.train_id
WHERE b.booking_date = '2025-11-01';

#Show all passengers who booked a train after 10 November 2025
SELECT p.passenger_name, b.booking_date
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
WHERE b.booking_date > '2025-11-5';

#Find trains with fare greater than ₹1000
SELECT train_name, source, destination, fare
FROM Train
WHERE fare > 1000;

#List all bookings made by female passengers
SELECT p.passenger_name, b.booking_id, t.train_name, b.booking_date
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
JOIN Train t ON b.train_id = t.train_id
WHERE p.gender = 'Female';

#Show total number of trains operating between each source and destination
SELECT source, destination, COUNT(train_id) AS total_trains
FROM Train
GROUP BY source, destination;

#Find the total number of passengers who booked tickets
SELECT COUNT(DISTINCT passenger_id) AS total_passengers
FROM Booking;

#Show top 5 most expensive trains
SELECT train_name, source, destination, fare
FROM Train
ORDER BY fare DESC
LIMIT 5;

#Display all passengers who booked the same train multiple times
SELECT p.passenger_name, b.train_id, COUNT(*) AS times_booked
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
GROUP BY p.passenger_name, b.train_id
HAVING COUNT(*) > 1;

#Find average fare of all trains
SELECT AVG(fare) AS average_fare
FROM Train;

#Find passengers who booked trains with fare above 1500
SELECT DISTINCT p.passenger_name, t.train_name, t.fare
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
JOIN Train t ON b.train_id = t.train_id
WHERE t.fare > 1500;

#List all trains and show how many bookings each train has received
SELECT t.train_name, COUNT(b.booking_id) AS total_bookings
FROM Train t
LEFT JOIN Booking b ON t.train_id = b.train_id
GROUP BY t.train_name;

#Find all bookings that were made between 1st and 10th November 2025
SELECT b.booking_id, p.passenger_name, t.train_name, b.booking_date
FROM Booking b
JOIN Passenger p ON b.passenger_id = p.passenger_id
JOIN Train t ON b.train_id = t.train_id
WHERE b.booking_date BETWEEN '2025-11-01' AND '2025-11-10';

#Display passengers sorted by their age in descending order
SELECT passenger_id, passenger_name, age, gender
FROM Passenger
ORDER BY age DESC;

#Find trains that take more than 10 hours to reach destination (approximate)
SELECT train_name, source, destination, 
TIMEDIFF(arrival_time, departure_time) AS travel_time
FROM Train
WHERE TIME_TO_SEC(TIMEDIFF(arrival_time, departure_time)) > 36000;

#Calculate total revenue generated from all bookings
SELECT SUM(t.fare) AS total_revenue
FROM Booking b
JOIN Train t ON b.train_id = t.train_id;
