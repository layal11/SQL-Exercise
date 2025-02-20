SELECT* FROM students;


SELECT name 
FROM students;


SELECT * 
FROM students
WHERE Age > 30;


SELECT name 
FROM students
WHERE Gender = "F" AND Age = "30";


SELECT Points 
FROM students
WHERE name = "Alex";


INSERT INTO students (name, Age, Gender, Points)
VALUES ("layal", 23, "F", 0);


UPDATE students
SET Points = 340
WHERE name = "Basma";

UPDATE students
SET Points = 190
WHERE name = "Alex";


CREATE TABLE graduates(
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name varchar(255), 
Age INT,  
Gender varchar(255), 
Points INT, 
Graduation varchar(255)
);


insert into graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points
       FROM students 
	where students.name = "Layal"


UPDATE graduates 
SET Graduation = '08/09/2018'
WHERE name = "Layal"


DELETE FROM students
WHERE name="Layal"


# JOINS

SELECT employees.name , companies.name , companies.Date 
FROM employees 
INNER JOIN companies
ON companies.name = employees.Company;


SELECT employees.name
FROM employees 
INNER JOIN companies
ON companies.name = employees.Company
WHERE companies.Date < 2000


SELECT companies.name
FROM companies 
INNER JOIN employees
ON companies.name = employees.Company
WHERE employees.Role = "Graphic Designer"


SELECT name
FROM students
where points IN (
SELECT max(points)
from students
)


SELECT avg(Points)
FROM students


SELECT count(*)
FROM students
WHERE Points = 500



SELECT name
FROM students
WHERE name like "%s%"


SELECT *
FROM students
ORDER BY Points DESC;