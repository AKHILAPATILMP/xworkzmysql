create database shop1;
use shop1;

CREATE TABLE Shop (
    SparID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    Supplier VARCHAR(100),
    ExpiryDate DATE,
    DiscountPercent FLOAT
);
INSERT INTO Shop VALUES
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
select * from Shop;
select count(*) as totalcount from Shop;
select sum(Stock) as totalStock from Shop;
select max(price) as maxPrice from Shop;
select avg(price) as avgPrice from shop;
SELECT SUM(Price * Stock) AS totalInventoryValue FROM Shop;
SELECT MAX(ExpiryDate) AS latestExpiry FROM Shop;
select Category , sum(Stock) from Shop group by Category;
select Category , min(Price) from Shop group by Category;
select Category , DiscountPercent from Shop group by Category;

SELECT Category, SUM(Stock) AS totalStock
FROM Shop
GROUP BY Category
HAVING totalStock > 500;

SELECT Category, AVG(Price) AS avgPrice
FROM Shop
GROUP BY Category
HAVING avgPrice > 2.00;