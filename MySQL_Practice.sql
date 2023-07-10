create database Amshekh_Labs;

use Amshekh_Labs;

create table Employee_Info(
ID int not null auto_increment primary key,
Emp_Name varchar(30) not null,
Address varchar(250) not null,
City varchar(50) not null,
Doj date not null,
Designation varchar(50) not null,
Salary decimal(15, 2) not null,
Mobile_No varchar(15) not null);

select * from Employee_Info;

alter table Employee_Info
add column Email varchar(50) not null;

alter table Employee_Info
drop Email;

drop table Employee_Info;

insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Amit Shekhar', '7/9, 7th floor, Babbage Appartments', 'California',
 '2022-12-01', 'Data Scientist/ Data Engineer', '185000', '4086529007');

 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Kim Zhao', '1/5, Lee lane, Singapore colonial residences', 'California',
 '2022-12-02', 'Data Analyst', '105000', '8086349281');
 
insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Tulika Kumari', '5/81, Brown Valley, above yoga centre', 'California',
 '2022-12-01', 'DevOps Engineer', '95000', '5146529359');
 
insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Andrea Sharpova', '8/37, Tennis Academy lane, California Stadium', 'California',
 '2022-12-01', 'Graphic Designer', '75000', '9876529411');
 
insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Emily White', '5/5, music station valley, above DC store', 'California',
 '2022-12-02', 'Python Programmer', '105000', '2082589753');
 
 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Zandaya Olsen', '4/8, city subway road, above Marvel store', 'San Fransisco',
 '2022-12-02', 'FrontEnd Engineer', '65000', '9772584435');
 
 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Elizabeth Upton', '2/21, Downtown, adjacent Khloe swimsuit store', 'Los Angeles',
 '2022-12-02', 'Software Engineer', '107000', '4182589333');
 
 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Swarnika Kapoor', '9/5, AMC Theatre lane, Behind Yoga Centre', 'San Fransisco',
 '2022-12-02', 'Data Analyst', '105000', '6272581153');
 
 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Meike Niemeier', '11/5, Eurolane, Opposite Meike Car rentals', 'Los Angeles',
 '2022-12-02', 'Java Programmer', '105000', '6112589741');
 
 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Siddhi Arora', '8/41, Kittens lane, Opposite Walmart Store', 'San Fransisco',
 '2022-12-02', 'Graphic Designer', '65000', '8462589719');
 
 insert into Employee_Info(Emp_Name, Address, City, Doj, Designation,
 Salary, Mobile_No)
values ('Karolina Kreglicka', '1/25, stoney lane, Opposite Amazon Store', 'Los Angeles',
 '2022-12-02', 'Python Programmer', '105000', '7112589799');
 
 select Emp_Name, Mobile_No from Employee_Info;
 
 select Emp_Name, Mobile_No from Employee_Info where Designation = 'Data Analyst';
 
 select Emp_Name, Mobile_No, Designation, Salary from Employee_Info where Salary <= 100000;
 
 update Employee_Info set Salary = 85000 where ID = 7;
 
 delete from Employee_Info where ID = 10;
 
 delete from Employee_Info;
 
 select ID, Emp_Name, Mobile_No from Employee_Info where Salary >= 75000 and City = 'California';
 
 select ID, Emp_Name, Mobile_No from Employee_Info where Salary <= 85000 or City = 'Los Angeles';
 
 select ID, Emp_Name, City, Mobile_No from Employee_Info where not City = 'San Fransisco';
 
 select * from Employee_Info where City like 'S%';
 
 select * from Employee_Info where Emp_Name like 'E%';
 
 select * from Employee_Info where Emp_Name like '%N';
 
 select * from Employee_Info where Mobile_No like '__7%';
 
 select * from Employee_Info where Emp_Name not like 'S%';
 
 select * from Employee_Info where City in ('San Fransisco', 'Los Angeles'); 
 
 select * from Employee_Info where City not in ('Los Angeles', 'San Fransisco');
 
 select * from Employee_Info where Salary between 60000 and 110000;
 
 select * from Employee_Info where ID between 3 and 11;
 
 select * from Employee_Info limit 5;
 
 select * from Employee_Info order by Emp_Name;
 
 select * from Employee_Info order by Emp_Name desc;
 
 select count(Emp_Name) from Employee_Info;
 
 select sum(Salary) from Employee_Info;
 
 select avg(Salary) from Employee_Info;
 
 select Emp_Name, max(Salary) as Highest_Salary from Employee_Info;
 
 create database Colrado_Soft;
 
 use Colrado_Soft;
 
 create table Customer_Info(
 Customer_ID int primary key,
 Customer_Name varchar(35),
 City varchar(35)
 );

select * from Customer_Info;

insert into Customer_Info values (1001, 'Jennifer Thatcher', 'London');
insert into Customer_Info values (1002, 'Elizabeth Smith', 'Stockholm');
insert into Customer_Info values (1003, 'Yelena Bankman', 'Seoul');
insert into Customer_Info values (1004, 'Natlie Bishop', 'Paris');
insert into Customer_Info values (1005, 'Nicole Theron', 'Hamburg');
insert into Customer_Info values (1006, 'Charleze Douglas', 'London');
insert into Customer_Info values (1007, 'Kate Herd', 'Hamburg');
insert into Customer_Info values (1008, 'Stephnie Vuitton', 'Paris');

CREATE TABLE Orders (
   Order_ID int,
   Customer_ID int primary key,
   Order_Date date
   );
 
select * from Orders;
 
insert into Orders values (001, 1001, '2022-12-27');
insert into Orders values (002, 1002, '2022-12-28');
insert into Orders values (003, 1003, '2022-12-28');
insert into Orders values (004, 1004, '2022-12-29');
insert into Orders values (005, 1005, '2022-12-29');
insert into Orders values (006, 1006, '2022-12-30');
insert into Orders values (007, 1007, '2022-12-30');
insert into Orders values (008, 1008, '2022-12-31');

select Orders.Order_ID, Customer_Info.Customer_Name, Orders.Order_Date from Orders
inner join Customer_Info on Orders.Customer_ID = Customer_Info.Customer_ID;

select Orders.Order_Date, Customer_Info.City from Orders
inner join Customer_Info on Orders.Customer_ID = Customer_Info.Customer_ID;

select count(Designation), sum(Salary), Designation from Employee_Info group by Designation;

create table Employee_Info_Backup(
ID int not null auto_increment primary key,
Emp_Name varchar(30) not null,
Address varchar(250) not null,
City varchar(50) not null,
Doj date not null,
Designation varchar(50) not null,
Salary decimal(15, 2) not null,
Mobile_No varchar(15) not null);

select * from Employee_Info_Backup;

insert into Employee_Info_Backup select * from Employee_Info;

truncate table Employee_Info_Backup;

create database Constraints_Example;

use Constraints_Example;

create table NotNull_Example(
Emp_Name varchar(30) not null,
City varchar(30)
);

select * from NotNull_Example;

drop table NotNull_Example;

insert into NotNull_Example (Emp_Name, City) values ('Amy kent', 'Kentucky');

insert into NotNull_Example (City) values ('Denver');

create table Default_Example(
Emp_Name varchar(30) not null,
City varchar(30),
Mobile_No varchar(50) default "Mobile no. is not available"
);

select * from Default_Example;

insert into Default_Example (Emp_Name, City, Mobile_No) 
values ('Zatanna Zatara', 'San Fransisco', 5863599271);

insert into Default_Example (Emp_Name, City) values ('Lacey Chabert' , 'Santa Clara');

create table Check_Example (
Emp_Name varchar(35),
Age int, check (Age >=18)
);

select * from Check_Example;

insert into Check_Example (Emp_Name, Age) values ('Caity Kent', 18);

insert into Check_Example (Emp_Name, Age) values ('Melissa Lotz', 17);

create table Unique_Example (
Emp_Name varchar(35),
Mobile_No varchar(12) unique not null
);

select * from Unique_Example;

insert into Unique_Example (Emp_Name, Mobile_No) values ('Karolina Benoist', 6851112737);

insert into Unique_Example (Emp_Name, Mobile_No) values ('Nicole Flockhart', 6851112737);

create table Department (
Department_ID int primary key,
Department_Name varchar(50)
);

select * from Department;

insert into Department values (01, 'Software Development');
insert into Department values (02, 'Software Testing');
insert into Department values (03, 'Software Sales');
insert into Department values (04, 'Human Resources');
insert into Department values (05, 'Maintnance');

create table Employee_Details (
Emp_ID int primary key,
Employee_Name varchar(35) not null,
Department_ID int,
foreign key (Department_Id) references Department(Department_ID) );

select * from Employee_Details;

insert into Employee_Details values (1075, 'Eve Tulloch', 04);
insert into Employee_Details values (1084, 'Bitsie Lima', 01);
insert into Employee_Details values (1031, 'Cara Benanti', 03);
insert into Employee_Details values (1018, 'Laura Grobglas', 05);
insert into Employee_Details values (1003, 'Jenna Graves', 02);
insert into Employee_Details values (1111, 'Annabelle Luthor', 07);
