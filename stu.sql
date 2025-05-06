create database student;
use student;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT
);
INSERT INTO Students (StudentID, Name, Marks) VALUES (1, 'Asha', 85);
INSERT INTO Students (StudentID, Name, Marks) VALUES (2, 'Raj', 92);
INSERT INTO Students (StudentID, Name, Marks) VALUES (3, 'Kiran', 78);
INSERT INTO Students (StudentID, Name, Marks) VALUES (4, 'Meera', 90);
SELECT * FROM Students
ORDER BY Marks DESC;