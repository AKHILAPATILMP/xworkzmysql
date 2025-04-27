
use states;
drop table state_info;
CREATE TABLE state_info (
    state_id INT,
    name VARCHAR(100),
    country VARCHAR(100),
    capital VARCHAR(100),
    population BIGINT
);
ALTER TABLE state_info
ADD governor_name VARCHAR(100),
ADD literacy_rate DECIMAL(5,2),
ADD formation_year INT;
ALTER TABLE state_info
RENAME COLUMN name TO state_name;

ALTER TABLE state_info
RENAME COLUMN country TO nation;

ALTER TABLE state_info
RENAME COLUMN capital TO capital_city;
ALTER TABLE state_info
MODIFY COLUMN governor_name TEXT;

ALTER TABLE state_info
MODIFY COLUMN literacy_rate FLOAT;

ALTER TABLE state_info
MODIFY COLUMN formation_year YEAR;
INSERT INTO state_info VALUES
(1, 'Karnataka', 'India', 'Bangalore', 68000000, 'Siddaramaiah', 75.60, 1956),
(2, 'Maharashtra', 'India', 'Mumbai', 124000000, 'Eknath Shinde', 82.30, 1960),
(3, 'Tamil Nadu', 'India', 'Chennai', 78000000, 'M. K. Stalin', 80.10, 1956),
(4, 'Gujarat', 'India', 'Gandhinagar', 69000000, 'Bhupendra Patel', 79.30, 1960),
(5, 'Kerala', 'India', 'Thiruvananthapuram', 35000000, 'Pinarayi Vijayan', 94.00, 1956),
(6, 'Uttar Pradesh', 'India', 'Lucknow', 230000000, 'Yogi Adityanath', 70.00, 1950),
(7, 'Rajasthan', 'India', 'Jaipur', 81000000, 'Bhajan Lal Sharma', 66.10, 1956),
(8, 'Punjab', 'India', 'Chandigarh', 30000000, 'Bhagwant Mann', 76.70, 1950),
(9, 'Haryana', 'India', 'Chandigarh', 28000000, 'Nayab Singh', 75.60, 1966),
(10, 'Bihar', 'India', 'Patna', 125000000, 'Nitish Kumar', 61.80, 1950),
(11, 'West Bengal', 'India', 'Kolkata', 96000000, 'Mamata Banerjee', 76.20, 1950),
(12, 'Madhya Pradesh', 'India', 'Bhopal', 85000000, 'Mohan Yadav', 69.30, 1956),
(13, 'Jharkhand', 'India', 'Ranchi', 39000000, 'Champai Soren', 67.60, 2000),
(14, 'Odisha', 'India', 'Bhubaneswar', 46000000, 'Naveen Patnaik', 73.50, 1950),
(15, 'Assam', 'India', 'Dispur', 36000000, 'Himanta Biswa Sarma', 72.20, 1950),
(16, 'Chhattisgarh', 'India', 'Raipur', 30000000, 'Vishnu Deo Sai', 70.30, 2000),
(17, 'Delhi', 'India', 'New Delhi', 20000000, 'Arvind Kejriwal', 88.70, 1956),
(18, 'Telangana', 'India', 'Hyderabad', 38000000, 'Revanth Reddy', 72.80, 2014),
(19, 'Andhra Pradesh', 'India', 'Amaravati', 53000000, 'Y. S. Jagan', 67.40, 1956),
(20, 'Goa', 'India', 'Panaji', 1500000, 'Pramod Sawant', 88.70, 1987);

UPDATE state_info 
SET literacy_rate = 78.00 
WHERE state_name = 'Karnataka';

UPDATE state_info 
SET governor_name = 'Shivraj Singh Chouhan' 
WHERE state_name = 'Madhya Pradesh';

UPDATE state_info 
SET formation_year = 1980 
WHERE state_name = 'Goa';

UPDATE state_info 
SET population = 100000000 
WHERE state_name = 'Maharashtra';

UPDATE state_info 
SET capital_city = 'Chennai' 
WHERE state_name = 'Tamil Nadu';

UPDATE state_info 
SET governor_name = 'Anandiben Patel' 
WHERE state_name = 'Uttar Pradesh';

UPDATE state_info 
SET literacy_rate = 75.50 
WHERE state_name = 'Rajasthan';

UPDATE state_info 
SET formation_year = 1961 
WHERE state_name = 'Haryana';

UPDATE state_info 
SET governor_name = 'Rajnath Singh' 
WHERE state_name = 'Bihar';

UPDATE state_info 
SET capital_city = 'Gandhinagar' 
WHERE state_name = 'Gujarat';

UPDATE state_info 
SET governor_name = 'Amit Shah' 
WHERE state_id IN (1, 3, 5);

UPDATE state_info 
SET literacy_rate = 85.00 
WHERE state_name IN ('Maharashtra', 'Tamil Nadu', 'Kerala');

UPDATE state_info 
SET population = 90000000 
WHERE state_id NOT IN (7, 9, 10);

UPDATE state_info 
SET formation_year = 1970 
WHERE state_name NOT IN ('Goa', 'Delhi');


DELETE FROM state_info 
WHERE population > 100000000;

DELETE FROM state_info 
WHERE literacy_rate > 80 AND formation_year < 1960;

DELETE FROM state_info 
WHERE state_name = 'Assam' OR state_name = 'Goa';

DELETE FROM state_info 
WHERE state_id IN (1, 5, 9);

DELETE FROM state_info 
WHERE state_id NOT IN (2, 6, 10);

DELETE FROM state_info 
WHERE population BETWEEN 20000000 AND 100000000;

DELETE FROM state_info 
WHERE literacy_rate NOT BETWEEN 70.00 AND 80.00;

SELECT * FROM state_info 
WHERE population > 50000000;

SELECT * FROM state_info 
WHERE formation_year = 1956;

SELECT * FROM state_info 
WHERE literacy_rate > 75.00 AND formation_year > 1950;

SELECT * FROM state_info 
WHERE state_name = 'Assam' OR state_name = 'Goa';

SELECT * FROM state_info 
WHERE state_id IN (1, 3, 5);

SELECT * FROM state_info 
WHERE state_id NOT IN (2, 4, 6);

SELECT * FROM state_info 
WHERE population BETWEEN 30000000 AND 80000000;

SELECT * FROM state_info 
WHERE literacy_rate NOT BETWEEN 60.00 AND 70.00;

select * from state_info;