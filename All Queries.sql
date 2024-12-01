SHOW DATABASES;
CREATE DATABASE TECOMP;
SHOW DATABASES;
USE TECOMP;
SHOW TABLES;
CREATE TABLE STUDENT1
( RNO DEC(4) PRIMARY KEY,
SNAME VARCHAR(20) NOT NULL,
ADMNO DEC(5) UNIQUE,
SUB VARCHAR(15),
MM DEC(3) default 100,
MO DEC(3),
CHECK (MO<=MM)
);
SHOW TABLES;
DESC STUDENT;
SHOW DATABASES;
USE TECOMP;
SHOW TABLES;
CREATE TABLE EMPLOYEE1
( EMP_NO dec(5) PRIMARY KEY,
EMP_NAME VARCHAR(20) NOT NULL,
EMP_DEPT VARCHAR(10),
PROJECT_ID DEC(5),
PROJECT_NAME VARCHAR(20)
);
SHOW TABLES;
CREATE TABLE CUSTOMER
( CustomerID DEC(3) PRIMARY KEY,
CustomerName VARCHAR(20),	
ContactName	VARCHAR(20),
Address	VARCHAR(20),
City CHAR(20),	
PostalCode numeric(5),
Country CHAR(20)
);
SHOW TABLES;
INSERT INTO Customer(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('89','Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '406', 'Norway');
INSERT INTO Customer(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('99','Carim', 'Erichsen', 'Ska21', 'Stnger', '478', 'India');
USE TECOMP;
INSERT INTO Customer VALUES('88','RAJ', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India');
INSERT INTO Customer VALUES('85','RAJIV', 'ErICA', 'NAGPUR', 'NAGPUR', '411', 'India');
INSERT INTO Customer VALUES('91','RAM', 'SITA', 'PANVEL', 'NAVI', '41', 'India','3232323232');
SELECT * FROM CUSTOMER;
UPDATE CUSTOMER SET ContactName='Babeetta' where CustomerID=99;
delete FROM Customer WHERE CustomerID='88';
commit;
SELECT * FROM CUSTOMER;

INSERT INTO Customer VALUES('88','RAJ', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India');
SHOW TABLES;
ALTER TABLE Customer ADD CustomerPhone numeric;
desc Customer;
SELECT CITY, COUNTRY FROM CUSTOMER WHERE CustomerID='88' OR CustomerNAME="RAJIV";
INSERT INTO Customer VALUES('92','RAJIV', 'ErICA', 'NAGPUR', 'NAGPUR', '411', 'India','9090909090');
DESC CUSTOMER;
INSERT INTO Customer VALUES('93','RAMA', 'PRIYA', 'NAGPUR', 'NAGPUR', '422', 'India','9032343434');
UPDATE CUSTOMER SET CustomerPhone='2123434565' where CustomerID='85';
UPDATE CUSTOMER SET CustomerPhone='3487653245' where CustomerID='89';
UPDATE CUSTOMER SET CustomerPhone='3489078900' where CustomerID='99';
delete FROM Customer WHERE CustomerID='85';
commit;
SELECT * FROM CUSTOMER;
delete FROM Customer WHERE CustomerID='89';
rollback;
SELECT * FROM CUSTOMER;
INSERT INTO Customer VALUES('96','SUSHMA', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India','7654321432');
INSERT INTO Customer VALUES('98','SWATI', 'EICA', 'NAGPUR', 'NAPUR','411', 'India','3243546576');
INSERT INTO Customer VALUES('95','MOHIT', 'SITA', 'PANVEL', 'NAVI', '41', 'India','3232323233');
SELECT DISTINCT CustomerID, CustomerName from CUSTOMER;
SELECT * FROM Customer ORDER BY CustomerID;
SELECT COUNT(CustomerID), City FROM Customer GROUP BY City;
SELECT max(CustomerID) FROM Customer;
SELECT min(CustomerID) FROM Customer;
SELECT avg(CustomerID) FROM Customer;
SELECT sum(CustomerID) FROM Customer;
INSERT INTO Customer VALUES('100','RAJAN', 'ErI', 'PUNE', 'PUNE', '450', 'India','1232123454');
SELECT * FROM CUSTOMER;
USE TECOMP;
CREATE TABLE CUSTOMER1
( CustomerID DEC(3) PRIMARY KEY,
CustomerName VARCHAR(20),	
ContactName	VARCHAR(20),
Address	VARCHAR(20),
City CHAR(20),	
PostalCode numeric(5),
Country CHAR(20)
);
SHOW TABLES;
INSERT INTO Customer1 VALUES('96','SUSHMA', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India');
INSERT INTO Customer1 VALUES('97','SUSHMA', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India'),
							('98','SUSHMA', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India'),
                            ('99','SUSHMA', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India'),
                            ('95','SUSHMA', 'ErIC', 'NASHIK', 'NASHIK', '410', 'India');
SELECT * FROM CUSTOMER1;
UPDATE CUSTOMER1 SET CustomerName='RAM' where CustomerID='95';
ALTER TABLE Customer1 ADD CustomerPhone numeric;
ALTER TABLE Customer1 DROP CustomerPhone;
SELECT DISTINCT CustomerID, CustomerName from CUSTOMER1;
SELECT CustomerID, CustomerName from CUSTOMER1;
SELECT * FROM Customer1 ORDER BY CustomerID ASC;
SELECT max(CustomerID) FROM Customer1;
SELECT min(CustomerID) FROM Customer1;
SELECT avg(CustomerID) FROM Customer1;
SELECT sum(CustomerID) FROM Customer1;
CREATE TABLE CUSTOMER2
( CustomerID DEC(3) PRIMARY KEY,
CustomerName VARCHAR(30),	
ContactName	VARCHAR(30),
Address	VARCHAR(30),
City CHAR(20),	
PostalCode numeric(10),
Country CHAR(20)
);
INSERT INTO CUSTOMER2 VALUES('1','Alfreds Futterkiste',	'Maria Anders','	Obere Str. 57',	'Berlin',	'12209',	'Germany'),
('2',	'Ana Trujillo ','	Ana Trujillo',	'onstitución 2222','	México D.F.','	05021',	'Mexico'),
('3',	'Antonio Moreno Taquería',	'Antonio Moreno',	'Mataderos 2312','	México D.F.',	'05023',	'Mexico'),
('4',	'Around the Horn',	'Thomas Hardy',	'120 Hanover Sq.',	'London',	'23232',	'UK'),
('5',	'Berglunds snabbköp',	'Christina Berglund',	'Berguvsvägen 8',	'Luleå',	'45678',	'Sweden'),
('6',	'Blauer See Delikatessen',	'Hanna Moos','	Forsterstr. 57','	Mannheim','	68306',	'Germany'),
('7',	'Blondel père et fils','	Frédérique Citeaux','	24, place Kléber','	Strasbourg','	67000','	France'),
('8',	'Bólido Comidas preparadas','	Martín Sommer','	C/ Araquil, 67','	Madrid','	28023','	Spain'),
('9',	'Bon app','	Laurence Lebihans','	12, rue des Bouchers','	Marseille','	13008','	France'),
('10',	'Bottom-Dollar Marketse','	Elizabeth Lincoln','	23 Tsawassen Blvd','	Tsawassen','	67890','	Canada'),
('11',	'B Beverages','	Victoria Ashworth','	Fauntleroy Circus','	London','	23145','	UK'),
('12',	'Cactus Comidas para llevar','	Patricio Simpson','	Cerrito 333','	Buenos Aires','	10100','	Argentina'),
('13','	Centro comercial Moctezuma','	Francisco Chang','	Sierras de Granada 9993','	México D.F.','	05022','	Mexico'),
('14','	Chop-suey Chinese','	Yang Wang','	Hauptstr. 29','	Bern','	30012','	Switzerland'),
('15','	Comércio Mineiro','	Pedro Afonso','	Av. dos Lusíadas, 23','	São Paulo','	05432','	Brazil'),
('16','	Consolidated Holdings','	Elizabeth Brown','	Berkeley Gardens 12 Brewery','	London','	35796','	UK'),
('17','	Drachenblut Delikatessend','	Sven Ottlieb','	Walserweg 21','	Aachen','	52066','	Germany'),
('18','	Du monde entier','	Janine Labrune','	67, rue des Cinquante Otages','	Nantes','	44000','	France'),
('19','	Eastern Connection','	Ann Devon','	35 King George','	London','	98765','	UK'),
('20',	'Ernst Handel',	'Roland Mendel',	'Kirchgasse 6','	Graz','	80010','	Austria');
SELECT * FROM CUSTOMER2;
SELECT CustomerName, City, Country FROM Customer2;
SELECT Country FROM Customer2;
SELECT DISTINCT Country FROM Customer2;
SELECT COUNT(DISTINCT Country) FROM Customer2;
SELECT * FROM Customer2 WHERE Country = 'Mexico';
SELECT * FROM Customer2 WHERE CustomerID = 1;
SELECT * FROM Customer2 WHERE Country='Germany' AND City='Berlin';
SELECT * FROM Customer2 WHERE City = 'Berlin' OR City = 'London';
SELECT * FROM Customer2 WHERE NOT Country = 'Germany';
SELECT * FROM Customer2 ORDER BY Country;
SELECT * FROM Customer2 ORDER BY Country DESC;
SELECT * FROM Customer2 ORDER BY Country, CustomerName;
SELECT * FROM Customer2 ORDER BY Country ASC, CustomerName DESC;
SELECT CustomerName, ContactName, Address FROM Customer2 WHERE Address IS NULL;
SELECT CustomerName, ContactName, Address FROM Customer2 WHERE Address IS NOT NULL;
UPDATE Customer2 SET ContactName = 'Alfred Schmidt', City = 'Frankfurt' WHERE CustomerID = 1;
select * from customer2;
SELECT * FROM Customer2 LIMIT 3;
SELECT * FROM Customer2 WHERE Country='Germany' LIMIT 3;
SELECT * FROM Customer2 WHERE CustomerName LIKE 'a%';
SELECT * FROM Customer2 WHERE CustomerName LIKE '%or%';
SELECT * FROM Customer2 WHERE Country IN ('Germany', 'Sweden', 'UK');
CREATE TABLE ORDERS
(OrderID NUMERIC(10) PRIMARY KEY,
CustomerID DEC(4),
OrderDate Date
);
INSERT INTO ORDERS VALUES('10308',	'2',	'1996-09-18'),
						('10309',	'17',	'1996-09-19'),
						('10310',	'11',	'1996-09-20');
SELECT Orders.OrderID, Customer2.CustomerName, Orders.OrderDate FROM Orders INNER JOIN Customer2 ON Orders.CustomerID=Customer2.CustomerID;
ALTER TABLE ORDERS ADD EmployeeID NUMERIC;
ALTER TABLE ORDERS ADD ShipperID NUMERIC;
UPDATE orders SET EmployeeID='7' where OrderID='10308';
UPDATE orders SET EmployeeID='17' where OrderID='10309';
UPDATE orders SET EmployeeID='11' where OrderID='10310';
UPDATE orders SET ShipperID='7' where OrderID='10308';
UPDATE orders SET ShipperID='17' where OrderID='10309';
UPDATE orders SET ShipperID='11' where OrderID='10310';
SELECT Customer2.CustomerName, Orders.OrderID FROM Customer2 LEFT JOIN Orders ON Customer2.CustomerID=Orders.CustomerID ORDER BY Customer2.CustomerName;
CREATE TABLE EMPLOYEES1
(EmployeeID NUMERIC(10) PRIMARY KEY,
LastName VARCHAR(30),
FirstName VARCHAR(30),
BirthDate DATE,
Photo VARCHAR(20)
);
INSERT INTO EMPLOYEES1 VALUES('1',	'Davolio','	Nancy','	1968-08-20','	EmpID1.pic'),
							('2',	'Fuller','	Andrew','	1952-02-18','	EmpID2.pic'),
							('3','	Leverling','	Janet',' 1963-09-30','	EmpID3.pic');
SELECT * FROM EMPLOYEES1;
SELECT Orders.OrderID, Employees1.LastName, Employees1.FirstName
FROM Orders
RIGHT JOIN Employees1 ON Orders.EmployeeID = Employees1.EmployeeID
ORDER BY Orders.OrderID;
SELECT Customer2.CustomerName, Orders.OrderID
FROM Customer2
CROSS JOIN Orders
WHERE Customer2.CustomerID=Orders.CustomerID;
SELECT COUNT(CustomerID), Country
FROM Customer2
GROUP BY Country;
SELECT COUNT(CustomerID), Country
FROM Customer2
GROUP BY Country
HAVING COUNT(CustomerID) < 5;
CREATE TABLE Products
(ProductID numeric PRIMARY KEY,
ProductName	VARCHAR(30),
SupplierID	NUMERIC,
CategoryID	NUMERIC,
Unit VARCHAR(30),
Price NUMERIC
);
INSERT INTO PRODUCTS VALUES('1',	'Chais','	1','	1','	10 boxes x 20 bags','	18'),
						   ('2',	'Chang','	1','	1','	24 - 12 oz bottles','	19'),
						   ('3','	Aniseed Syrup',	'1','	2','	12 - 550 ml bottles','	10'),
						   ('4',	'Chef AntonCajun','	2','	2','	48 - 6 oz jars','	22'),
						   ('5',	'Chef Anton','	2','	2','	36 boxes	21','35');
SELECT * FROM PRODUCTS;
SELECT * FROM ORDERS;
SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MIN(Price) AS SmallestPrice, CategoryID FROM Products GROUP BY CategoryID;
SELECT COUNT(*) FROM Products;
SELECT COUNT(CustomerID), Country FROM Customer2 GROUP BY Country;
SELECT COUNT(CustomerID), Country FROM Customer2 GROUP BY Country ORDER BY COUNT(CustomerID) DESC;
CREATE TABLE Shippers
( ShipperID	numeric primary key,
ShipperName VARCHAR(20)
);
INSERT INTO SHIPPERS VALUES('1',	'Speedy Express'),
('2',	'United Package'),
('3','	Federal Shipping');
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;
SELECT COUNT(CustomerID), Country
FROM Customer2
GROUP BY Country
HAVING COUNT(CustomerID) > 5;
SELECT COUNT(CustomerID), Country
FROM Customer2
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;
SELECT Employees1.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees1 ON Orders.EmployeeID = Employees1.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 2;
SELECT * FROM ORDERS;
SELECT 30 + 20;
SELECT 30 - 20;
SELECT 30 * 20;
SELECT 30 / 20;
SELECT 30 % 20;
SELECT * FROM Products WHERE Price = 18;
SELECT * FROM Products WHERE Price > 30;
SELECT * FROM Products WHERE Price < 30;
SELECT * FROM Products WHERE Price >= 30;
SELECT * FROM Products WHERE Price <= 30;
SELECT * FROM Products WHERE Price <> 18;
SELECT * FROM Products WHERE Price > ALL (SELECT Price FROM Products WHERE Price > 500);
SELECT * FROM Customer2 WHERE City = "London" AND Country = "UK";
SELECT * FROM Products WHERE Price > ANY (SELECT Price FROM Products WHERE Price >20);
SELECT * FROM Products WHERE Price BETWEEN 20 AND 60;
SELECT * FROM Products WHERE EXISTS (SELECT Price FROM Products WHERE Price > 30);
SELECT * FROM Products WHERE Price > SOME (SELECT Price FROM Products WHERE Price > 20);
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
CREATE TABLE STUDENT5
(S_ID DECIMAL PRIMARY KEY,
S_NAME VARCHAR(30),
S_ADDRESS VARCHAR(30),
S_PHONE DECIMAL(15),
S_AGE INTEGER
);
INSERT INTO STUDENT5 VALUES ('1', 	'RAM', 	'DELHI', '9155123451', '	18'),
							('2', 	'RAMESH',' 	GURGAON',' 	9152431543',' 	18'),
							('3', 	'SUJIT', '	ROHTAK',' 	9156253131',' 	20'),
							('4', 	'SURESH',' 	DELHI ','	9156768971',' 	18');
SELECT * FROM STUDENT5;
CREATE TABLE COURSE
(C_ID DECIMAL(5) PRIMARY KEY,
C_NAME VARCHAR(30)
);
INSERT INTO COURSE VALUES('1',' 	DSA'),
						('2',' 	Programming'),
						('3',' 	DBMS');
SELECT * FROM COURSE;
CREATE TABLE STUDENT_COURSE
(S_ID DECIMAL(5),
 C_ID DECIMAL (5)
 );
 INSERT INTO STUDENT_COURSE VALUES('1' ,	'1'),
									('1', 	'3'),
									('2', 	'1'),
									('3', 	'2'),
									('4', 	'2'),
									('4', 	'3');
SELECT * FROM STUDENT_COURSE;
SELECT C_ID FROM COURSE WHERE C_NAME = 'DSA' OR C_NAME = 'DBMS';



