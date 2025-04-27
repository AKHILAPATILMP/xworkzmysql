
use country;
drop table country_info;
CREATE TABLE country_info (
    country_id INT,
    name VARCHAR(100),
    continent VARCHAR(100),
    population BIGINT,
    currency VARCHAR(50)
);
ALTER TABLE country_info
ADD language VARCHAR(50),
ADD gdp DECIMAL(15, 2),
ADD area_km2 FLOAT;
ALTER TABLE country_info
RENAME COLUMN name TO country_name;

ALTER TABLE country_info
RENAME COLUMN continent TO region;

ALTER TABLE country_info
RENAME COLUMN currency TO local_currency;
ALTER TABLE country_info
MODIFY COLUMN local_currency TEXT;

ALTER TABLE country_info
MODIFY COLUMN gdp BIGINT;

ALTER TABLE country_info
MODIFY COLUMN area_km2 DOUBLE;
INSERT INTO country_info VALUES
(1, 'India', 'Asia', 1400000000, 'INR', 'Hindi', 3000000000000, 3287263),
(2, 'USA', 'North America', 331000000, 'USD', 'English', 21000000000000, 9833520),
(3, 'China', 'Asia', 1440000000, 'CNY', 'Mandarin', 17000000000000, 9596961),
(4, 'Japan', 'Asia', 126000000, 'JPY', 'Japanese', 5000000000000, 377975),
(5, 'Germany', 'Europe', 83000000, 'EUR', 'German', 4200000000000, 357022),
(6, 'UK', 'Europe', 67000000, 'GBP', 'English', 3200000000000, 243610),
(7, 'France', 'Europe', 65000000, 'EUR', 'French', 3000000000000, 551695),
(8, 'Brazil', 'South America', 212000000, 'BRL', 'Portuguese', 2400000000000, 8515767),
(9, 'Russia', 'Europe/Asia', 146000000, 'RUB', 'Russian', 1600000000000, 17098242),
(10, 'Canada', 'North America', 38000000, 'CAD', 'English', 2000000000000, 9984670),
(11, 'Australia', 'Oceania', 25000000, 'AUD', 'English', 1600000000000, 7692024),
(12, 'Italy', 'Europe', 60000000, 'EUR', 'Italian', 2100000000000, 301340),
(13, 'South Korea', 'Asia', 52000000, 'KRW', 'Korean', 1800000000000, 100210),
(14, 'Mexico', 'North America', 128000000, 'MXN', 'Spanish', 1300000000000, 1964375),
(15, 'Indonesia', 'Asia', 273000000, 'IDR', 'Indonesian', 1200000000000, 1904569),
(16, 'Spain', 'Europe', 47000000, 'EUR', 'Spanish', 1500000000000, 505990),
(17, 'Turkey', 'Europe/Asia', 85000000, 'TRY', 'Turkish', 800000000000, 783562),
(18, 'Saudi Arabia', 'Asia', 34000000, 'SAR', 'Arabic', 700000000000, 2149690),
(19, 'South Africa', 'Africa', 60000000, 'ZAR', 'English', 350000000000, 1219090),
(20, 'Argentina', 'South America', 45000000, 'ARS', 'Spanish', 500000000000, 2780400);
 UPDATE country_info 
SET gdp = 3100000000000 
WHERE country_name = 'India';

UPDATE country_info 
SET language = 'American English' 
WHERE country_name = 'USA';

UPDATE country_info 
SET population = 1450000000 
WHERE country_name = 'China';

UPDATE country_info 
SET area_km2 = 378000 
WHERE country_name = 'Japan';

UPDATE country_info 
SET local_currency = 'Deutsche Mark' 
WHERE country_name = 'Germany';

UPDATE country_info 
SET region = 'Europe (UK)' 
WHERE country_name = 'UK';

UPDATE country_info 
SET gdp = 2500000000000 
WHERE country_name = 'Brazil';

UPDATE country_info 
SET area_km2 = 17100000 
WHERE country_name = 'Russia';

UPDATE country_info 
SET population = 38000001 
WHERE country_name = 'Canada';

UPDATE country_info 
SET language = 'French' 
WHERE country_name = 'France';

DELETE FROM country_info 
WHERE population > 1000000000;

DELETE FROM country_info 
WHERE region = 'Asia' 
AND gdp > 3000000000000;

DELETE FROM country_info 
WHERE region = 'Europe' 
OR population > 100000000;

DELETE FROM country_info 
WHERE country_id IN (1, 2, 3);

DELETE FROM country_info 
WHERE country_id NOT IN (4, 5, 6);

DELETE FROM country_info 
WHERE gdp BETWEEN 500000000000 AND 5000000000000;

DELETE FROM country_info 
WHERE area_km2 NOT BETWEEN 1000000 AND 10000000;

SELECT * FROM country_info 
WHERE population > 100000000;

SELECT * FROM country_info 
WHERE region = 'Asia';

SELECT * FROM country_info 
WHERE region = 'Asia' 
AND gdp > 3000000000000;

SELECT * FROM country_info 
WHERE population > 100000000 
OR region = 'Europe';

SELECT * FROM country_info 
WHERE country_id IN (1, 5, 10);

SELECT * FROM country_info 
WHERE country_id NOT IN (3, 7, 8);

SELECT * FROM country_info 
WHERE gdp BETWEEN 1000000000000 AND 5000000000000;

SELECT * FROM country_info 
WHERE area_km2 NOT BETWEEN 1000000 AND 10000000;

 select * from country_info;