
create database airlines;
use airlines;
CREATE TABLE airlines_info (
    airline_id INT,
    name VARCHAR(100),
    country VARCHAR(100),
    established_year INT,
    fleet_size INT
);
ALTER TABLE airlines_info
ADD ceo_name VARCHAR(100),
ADD headquarters VARCHAR(100),
ADD is_active BOOLEAN;
ALTER TABLE airlines_info
RENAME COLUMN name TO airline_name;

ALTER TABLE airlines_info
RENAME COLUMN country TO base_country;

ALTER TABLE airlines_info
RENAME COLUMN established_year TO founded_year;
ALTER TABLE airlines_info
MODIFY COLUMN fleet_size BIGINT;

ALTER TABLE airlines_info
MODIFY COLUMN ceo_name TEXT;

ALTER TABLE airlines_info
MODIFY COLUMN is_active VARCHAR(10);
INSERT INTO airlines_info VALUES
(1, 'IndiGo', 'India', 2006, 300, 'Pieter Elbers', 'Gurgaon', 'Yes'),
(2, 'Air India', 'India', 1932, 120, 'Campbell Wilson', 'New Delhi', 'Yes'),
(3, 'SpiceJet', 'India', 2005, 100, 'Ajay Singh', 'Gurgaon', 'Yes'),
(4, 'Vistara', 'India', 2013, 50, 'Vinod Kannan', 'Gurgaon', 'Yes'),
(5, 'Go First', 'India', 2005, 60, 'Kaushik Khona', 'Mumbai', 'No'),
(6, 'AirAsia India', 'India', 2014, 30, 'Sunil Bhaskaran', 'Bangalore', 'Yes'),
(7, 'Akasa Air', 'India', 2021, 20, 'Vinay Dube', 'Mumbai', 'Yes'),
(8, 'Jet Airways', 'India', 1992, 90, 'Naresh Goyal', 'Mumbai', 'No'),
(9, 'Qatar Airways', 'Qatar', 1993, 250, 'Akbar Al Baker', 'Doha', 'Yes'),
(10, 'Emirates', 'UAE', 1985, 270, 'Tim Clark', 'Dubai', 'Yes'),
(11, 'Singapore Airlines', 'Singapore', 1947, 130, 'Goh Choon Phong', 'Singapore', 'Yes'),
(12, 'British Airways', 'UK', 1974, 280, 'Sean Doyle', 'London', 'Yes'),
(13, 'Lufthansa', 'Germany', 1953, 290, 'Carsten Spohr', 'Frankfurt', 'Yes'),
(14, 'American Airlines', 'USA', 1930, 900, 'Robert Isom', 'Texas', 'Yes'),
(15, 'Delta Airlines', 'USA', 1924, 850, 'Ed Bastian', 'Atlanta', 'Yes'),
(16, 'United Airlines', 'USA', 1926, 820, 'Scott Kirby', 'Chicago', 'Yes'),
(17, 'ANA', 'Japan', 1952, 230, 'Yuji Hirako', 'Tokyo', 'Yes'),
(18, 'Cathay Pacific', 'Hong Kong', 1946, 150, 'Ronald Lam', 'Hong Kong', 'Yes'),
(19, 'Turkish Airlines', 'Turkey', 1933, 340, 'Ahmet Bolat', 'Istanbul', 'Yes'),
(20, 'Thai Airways', 'Thailand', 1960, 100, 'Chai Eamsiri', 'Bangkok', 'Yes');

select * from airlines_info;