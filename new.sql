create database new;
use new;
CREATE TABLE OnlineGames (
    GameID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Platform VARCHAR(50),
    ReleaseYear INT,
    Multiplayer BOOLEAN,
    Rating FLOAT,
    Developer VARCHAR(100)
);
CREATE TABLE Spar (
    SparID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    Supplier VARCHAR(100),
    ExpiryDate DATE,
    DiscountPercent FLOAT
);
CREATE TABLE Utensils (
    UtensilID INT PRIMARY KEY,
    Name VARCHAR(100),
    Material VARCHAR(50),
    Type VARCHAR(50),
    Weight DECIMAL(10,2),
    Price DECIMAL(10,2),
    Manufacturer VARCHAR(100),
    Color VARCHAR(30)
);
INSERT INTO OnlineGames VALUES
(1, 'Fortnite', 'Battle Royale', 'PC', 2017, TRUE, 4.5, 'Epic Games'),
(2, 'Minecraft', 'Sandbox', 'PC', 2011, TRUE, 4.8, 'Mojang Studios'),
(3, 'Among Us', 'Party', 'Mobile', 2018, TRUE, 4.2, 'Innersloth'),
(4, 'Call of Duty', 'Shooter', 'Console', 2019, TRUE, 4.0, 'Activision'),
(5, 'League of Legends', 'MOBA', 'PC', 2009, TRUE, 4.7, 'Riot Games'),
(6, 'Apex Legends', 'Battle Royale', 'PC', 2019, TRUE, 4.3, 'Respawn Entertainment'),
(7, 'Genshin Impact', 'RPG', 'Mobile', 2020, TRUE, 4.4, 'miHoYo'),
(8, 'Roblox', 'Sandbox', 'PC', 2006, TRUE, 4.1, 'Roblox Corporation'),
(9, 'Valorant', 'Shooter', 'PC', 2020, TRUE, 4.0, 'Riot Games'),
(10,'FIFA 21', 'Sports', 'Console', 2020, TRUE, 3.9, 'EA Sports'),
(11,'Overwatch', 'Shooter', 'PC', 2016, TRUE, 4.5, 'Blizzard Entertainment'),
(12,'Cyberpunk 2077', 'RPG', 'PC', 2020, FALSE, 3.5, 'CD Projekt'),
(13,'The Witcher 3', 'RPG', 'PC', 2015, FALSE, 4.9, 'CD Projekt'),
(14,'Halo Infinite', 'Shooter', 'Console', 2021, TRUE, 4.2, '343 Industries'),
(15,'Destiny 2', 'Shooter', 'Console', 2017, TRUE, 4.1, 'Bungie'),
(16,'Animal Crossing', 'Simulation', 'Console', 2020, TRUE, 4.6, 'Nintendo'),
(17,'PUBG', 'Battle Royale', 'PC', 2017, TRUE, 3.8, 'PUBG Corporation'),
(18,'Minecraft Dungeons', 'Dungeon Crawler', 'PC', 2020, TRUE, 3.7, 'Mojang Studios'),
(19,'Rocket League', 'Sports', 'PC', 2015, TRUE, 4.3, 'Psyonix'),
(20,'Fall Guys', 'Party', 'PC', 2020, TRUE, 3.9, 'Mediatonic');
INSERT INTO Spar VALUES
(1, 'Milk', 'Dairy', 1.20, 150, 'DairyFarm', '2024-10-05', 5.0),
(2, 'Bread', 'Bakery', 0.80, 200, 'BakeHouse', '2024-09-30', 10.0),
(3, 'Apple', 'Fruits', 0.50, 300, 'FreshFarms', '2024-09-15', 0.0),
(4, 'Banana', 'Fruits', 0.30, 250, 'TropicalFarms', '2024-09-20', 2.0),
(5, 'Eggs', 'Dairy', 2.50, 100, 'FarmFresh', '2024-10-01', 0.0),
(6, 'Cheese', 'Dairy', 3.00, 80, 'DairyFarm', '2024-11-01', 5.0),
(7, 'Chicken Breast', 'Meat', 5.00, 60, 'MeatMasters', '2024-09-25', 15.0),
(8, 'Rice', 'Grains', 1.00, 500, 'GrainCo', '2025-01-01', 0.0),
(9, 'Pasta', 'Grains', 1.20, 400, 'GrainCo', '2025-02-01', 0.0),
(10,'Orange Juice', 'Beverages', 2.00, 120, 'JuiceLand', '2024-10-15', 10.0),
(11,'Tomato', 'Vegetables', 0.60, 300, 'GreenFarm', '2024-09-10', 0.0),
(12,'Potato', 'Vegetables', 0.40, 350, 'GreenFarm', '2024-10-01', 0.0),
(13,'Lettuce', 'Vegetables', 1.00, 150, 'GreenFarm', '2024-09-05', 5.0),
(14,'Cucumber', 'Vegetables', 0.70, 180, 'GreenFarm', '2024-09-08', 5.0),
(15,'Coffee', 'Beverages', 4.00, 90, 'BrewCo', '2025-03-15', 20.0),
(16,'Tea', 'Beverages', 3.00, 85, 'BrewCo', '2025-02-20', 10.0),
(17,'Butter', 'Dairy', 2.20, 95, 'DairyFarm', '2024-10-30', 5.0),
(18,'Yogurt', 'Dairy', 1.50, 110, 'DairyFarm', '2024-10-25', 0.0),
(19,'Beef Steak', 'Meat', 8.00, 50, 'MeatMasters', '2024-09-22', 10.0),
(20,'Salmon', 'Seafood', 9.00, 40, 'FishWorld', '2024-09-15', 15.0);
INSERT INTO Utensils VALUES
(1, 'Spoon', 'Stainless Steel', 'Cutlery', 0.05, 2.00, 'UtensilCo', 'Silver'),
(2, 'Fork', 'Stainless Steel', 'Cutlery', 0.06, 2.20, 'UtensilCo', 'Silver'),
(3, 'Knife', 'Steel', 'Cutlery', 0.10, 3.50, 'KnifeMakers', 'Silver'),
(4, 'Frying Pan', 'Aluminum', 'Cookware', 1.20, 15.00, 'CookwareInc', 'Black'),
(5, 'Saucepan', 'Stainless Steel', 'Cookware', 0.90, 12.00, 'CookwareInc', 'Silver'),
(6, 'Spatula', 'Silicone', 'Utensil', 0.15, 5.00, 'ChefTools', 'Red'),
(7, 'Whisk', 'Stainless Steel', 'Utensil', 0.20, 6.00, 'ChefTools', 'Silver'),
(8, 'Cutting Board', 'Wood', 'Board', 0.80, 10.00, 'BoardMakers', 'Brown'),
(9, 'Ladle', 'Stainless Steel', 'Utensil', 0.25, 7.00, 'UtensilCo', 'Silver'),
(10,'Measuring Cup', 'Plastic', 'Utensil', 0.30, 3.00, 'ChefTools', 'Transparent'),
(11,'Tongs', 'Stainless Steel', 'Utensil', 0.40, 6.50, 'ChefTools', 'Silver'),
(12,'Peeler', 'Steel', 'Utensil', 0.10, 4.00, 'UtensilCo', 'Black'),
(13,'Grater', 'Steel', 'Utensil', 0.35, 8.00, 'UtensilCo', 'Silver'),
(14,'Colander', 'Plastic', 'Utensil', 0.70, 9.00, 'ChefTools', 'White'),
(15,'Rolling Pin', 'Wood', 'Utensil', 1.50, 14.00, 'BoardMakers', 'Brown'),
(16,'Salad Bowl', 'Glass', 'Bowl', 0.80, 11.00, 'GlassWorks', 'Transparent'),
(17,'Mixing Bowl', 'Plastic', 'Bowl', 0.85, 10.00, 'ChefTools', 'White'),
(18,'Can Opener', 'Steel', 'Utensil', 0.20, 5.50, 'UtensilCo', 'Black'),
(19,'Tea Strainer', 'Steel', 'Utensil', 0.15, 6.00, 'TeaTools', 'Silver'),
(20,'Soup Spoon', 'Stainless Steel', 'Cutlery', 0.07, 2.50, 'UtensilCo', 'Silver');
UPDATE OnlineGames SET Rating = 4.6 WHERE GameID IN (1,2,3,4,5);
UPDATE OnlineGames SET Multiplayer = FALSE WHERE Platform = 'PC' AND ReleaseYear < 2015;
UPDATE OnlineGames SET Developer = 'Epic Games Studio' WHERE Title = 'Fortnite';
UPDATE OnlineGames SET Genre = 'Action RPG' WHERE GameID = 7;
UPDATE OnlineGames SET Rating = 3.8 WHERE GameID BETWEEN 16 AND 20;
UPDATE OnlineGames SET ReleaseYear = 2022 WHERE Title = 'Halo Infinite';
UPDATE OnlineGames SET Platform = 'Mobile' WHERE Genre = 'Party';
UPDATE OnlineGames SET Multiplayer = TRUE WHERE Rating > 4.0;
UPDATE OnlineGames SET Title = 'PUBG Mobile' WHERE GameID = 17;
UPDATE OnlineGames SET Developer = 'Unknown' WHERE Developer IS NULL;
UPDATE Spar SET Price = Price * 0.9 WHERE Category = 'Dairy';
UPDATE Spar SET Stock = Stock + 50 WHERE ExpiryDate BETWEEN '2024-09-01' AND '2024-09-30';
UPDATE Spar SET DiscountPercent = 10 WHERE ItemName IN ('Milk', 'Cheese', 'Butter');
UPDATE Spar SET Supplier = 'OrganicFarms' WHERE Category = 'Fruits';
UPDATE Spar SET Price = Price + 0.5 WHERE NOT Category IN ('Dairy', 'Bakery');
UPDATE Spar SET Stock = 0 WHERE ExpiryDate < '2024-09-01';
UPDATE Spar SET DiscountPercent = 0 WHERE Stock < 100;
UPDATE Spar SET Price = Price * 0.95 WHERE DiscountPercent BETWEEN 5 AND 15;
UPDATE Spar SET Category = 'Seafood' WHERE ItemName = 'Salmon';
UPDATE Spar SET Supplier = 'FarmFresh' WHERE Category = 'Dairy';
UPDATE Utensils SET Price = Price * 1.05 WHERE Material = 'Stainless Steel';
UPDATE Utensils SET Color = 'Red' WHERE Name IN ('Spatula', 'Measuring Cup');
UPDATE Utensils SET Weight = Weight + 0.05 WHERE Type = 'Cutlery';
UPDATE Utensils SET Manufacturer = 'PremiumTools' WHERE Price > 10;
UPDATE Utensils SET Material = 'Plastic' WHERE NOT Material IN ('Steel', 'Stainless Steel', 'Aluminum');
UPDATE Utensils SET Price = Price - 1 WHERE Weight BETWEEN 0.1 AND 0.3;
UPDATE Utensils SET Color = 'Black' WHERE Color = 'Silver';
UPDATE Utensils SET Type = 'Cookware' WHERE Name = 'Frying Pan';
UPDATE Utensils SET Manufacturer = 'ChefDelights' WHERE Name IN ('Whisk', 'Tongs');
UPDATE Utensils SET Name = 'Kitchen Knife' WHERE Name = 'Knife';
-- 4) DELETE THE DATA USING WHERE, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN.

-- OnlineGames deletes
DELETE FROM OnlineGames WHERE GameID = 20;
DELETE FROM OnlineGames WHERE ReleaseYear < 2010;
DELETE FROM OnlineGames WHERE Genre = 'Party' AND Multiplayer = TRUE;
DELETE FROM OnlineGames WHERE Platform IN ('Mobile', 'Console') AND Rating < 4.0;
DELETE FROM OnlineGames WHERE Developer NOT IN ('Epic Games', 'Mojang Studios', 'Riot Games');
DELETE FROM OnlineGames WHERE ReleaseYear BETWEEN 2011 AND 2015;
DELETE FROM OnlineGames WHERE Rating NOT BETWEEN 4.0 AND 5.0;

-- Spar deletes
DELETE FROM Spar WHERE Price < 0.5;
DELETE FROM Spar WHERE Category = 'Beverages' OR DiscountPercent > 15;
DELETE FROM Spar WHERE Supplier IN ('MeatMasters', 'FishWorld');
DELETE FROM Spar WHERE ExpiryDate NOT BETWEEN '2024-09-01' AND '2024-12-31';
DELETE FROM Spar WHERE Stock BETWEEN 0 AND 40;
DELETE FROM Spar WHERE ItemName NOT IN ('Bread', 'Milk', 'Eggs', 'Rice');

-- Utensils deletes
DELETE FROM Utensils WHERE Color = 'Red';
DELETE FROM Utensils WHERE Weight BETWEEN 1.4 AND 1.6;
DELETE FROM Utensils WHERE Manufacturer = 'TeaTools' OR Material = 'Wood';
DELETE FROM Utensils WHERE Name IN ('Peeler', 'Can Opener');
DELETE FROM Utensils WHERE Price NOT BETWEEN 5.0 AND 15.0;
DELETE FROM Utensils WHERE Type NOT IN ('Cutlery', 'Cookware', 'Utensil');

-- FETCH THE DATA USING WHERE CLAUSE.

SELECT * FROM OnlineGames WHERE Genre = 'Battle Royale';
SELECT * FROM Spar WHERE Category = 'Dairy';
SELECT * FROM Utensils WHERE Material = 'Stainless Steel';

-- 6) FETCH THE DATA USING AND, OR, IN, NOT IN,
-- BETWEEN, NOT BETWEEN.

-- OnlineGames
SELECT * FROM OnlineGames WHERE Genre = 'Shooter' AND Rating > 4.0;
SELECT * FROM OnlineGames WHERE Platform = 'PC' OR Multiplayer = FALSE;
SELECT * FROM OnlineGames WHERE Developer IN ('Epic Games', 'Blizzard Entertainment');
SELECT * FROM OnlineGames WHERE Title NOT IN ('Minecraft', 'Fortnite');
SELECT * FROM OnlineGames WHERE ReleaseYear BETWEEN 2015 AND 2020;
SELECT * FROM OnlineGames WHERE Rating NOT BETWEEN 3.5 AND 4.5;

-- Spar
SELECT * FROM Spar WHERE Price > 1.0 AND Stock > 100;
SELECT * FROM Spar WHERE Category = 'Fruits' OR DiscountPercent > 10;
SELECT * FROM Spar WHERE Supplier IN ('DairyFarm', 'BakeHouse');
SELECT * FROM Spar WHERE ItemName NOT IN ('Milk', 'Bread');
SELECT * FROM Spar WHERE ExpiryDate BETWEEN '2024-09-01' AND '2024-10-31';
SELECT * FROM Spar WHERE DiscountPercent NOT BETWEEN 0 AND 5;

-- Utensils
SELECT * FROM Utensils WHERE Type = 'Cutlery' AND Price > 2.0;
SELECT * FROM Utensils WHERE Material = 'Steel' OR Color = 'Black';
SELECT * FROM Utensils WHERE Manufacturer IN ('ChefTools', 'UtensilCo');
SELECT * FROM Utensils WHERE Name NOT IN ('Spoon', 'Fork', 'Knife');
SELECT * FROM Utensils WHERE Weight BETWEEN 0.1 AND 0.5;
SELECT * FROM Utensils WHERE Price NOT BETWEEN 3.0 AND 7.0;

-- 7) UPDATE THE DATA USING AND, OR, IN, NOT IN,
-- BETWEEN, NOT BETWEEN.

-- OnlineGames updates
UPDATE OnlineGames SET Rating = Rating + 0.2 WHERE Genre = 'RPG' AND Rating < 4.5;
UPDATE OnlineGames SET Multiplayer = FALSE WHERE Platform = 'Console' OR ReleaseYear < 2015;
UPDATE OnlineGames SET Developer = 'Updated Dev' WHERE Developer IN ('Riot Games', 'Epic Games');
UPDATE OnlineGames SET Title = 'Updated Title' WHERE Title NOT IN ('Minecraft', 'Among Us');
UPDATE OnlineGames SET ReleaseYear = 2023 WHERE ReleaseYear BETWEEN 2018 AND 2020;
UPDATE OnlineGames SET Rating = 4.0 WHERE Rating NOT BETWEEN 3.5 AND 5.0;

-- Spar updates
UPDATE Spar SET DiscountPercent = 15 WHERE Category = 'Vegetables' AND Stock > 100;
UPDATE Spar SET Price = Price * 0.85 WHERE Supplier = 'DairyFarm' OR Price > 5;
UPDATE Spar SET Stock = Stock - 20 WHERE ItemName IN ('Milk', 'Eggs', 'Butter');
UPDATE Spar SET Supplier = 'New Supplier' WHERE Supplier NOT IN ('DairyFarm', 'BakeHouse');
UPDATE Spar SET ExpiryDate = '2025-12-31' WHERE ExpiryDate BETWEEN '2024-09-01' AND '2024-12-31';
UPDATE Spar SET DiscountPercent = 0 WHERE DiscountPercent NOT BETWEEN 0 AND 10;

-- Utensils updates
UPDATE Utensils SET Color = 'Blue' WHERE Type = 'Utensil' AND Price < 6;
UPDATE Utensils SET Material = 'Carbon Steel' WHERE Manufacturer = 'UtensilCo' OR Weight > 1.0;
UPDATE Utensils SET Price = Price + 3 WHERE Name IN ('Spatula', 'Tongs');
UPDATE Utensils SET Manufacturer = 'Global Utensils' WHERE Manufacturer NOT IN ('ChefTools', 'UtensilCo');
UPDATE Utensils SET Weight = Weight - 0.1 WHERE Weight BETWEEN 0.15 AND 0.3;
UPDATE Utensils SET Color = 'Green' WHERE Color NOT BETWEEN 'A' AND 'M';