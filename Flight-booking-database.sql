Create database Flight_Management_System;
CREATE TABLE Flights (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  departure_airport VARCHAR(255) NOT NULL,
  arrival_airport VARCHAR(255) NOT NULL,
  departure_date DATE NOT NULL,
  arrival_date DATE NOT NULL,
  base_price DECIMAL(10,2) NOT NULL);
  
CREATE TABLE Bookings (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  flight_id BIGINT NOT NULL,
  passenger_name VARCHAR(255) NOT NULL,
  passenger_email VARCHAR(255) NOT NULL,
  FOREIGN KEY (flight_id) REFERENCES Flights(id)
);



