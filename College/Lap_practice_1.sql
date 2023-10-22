Create database Lab1;
use lab1;
create table Salesman(
	Salesman_id int not null primary key auto_increment,
    Name varchar(50) not null,
    city varchar(100) ,
    Comminsion float);
    
Insert into Salesman (Salesman_id, Name, City, Comminsion) values 
	(5001,'James Hooq','New York',0.15),
    (5002,'Nail Knite','Paris',0.11),
    (5005,'Pit Alex','London',0.12),
    (5006,'Mc Lyon','Paris',0.14),
    (5003,'Lausen Hen',NUll,0.12),
    (5007,'Paul Adem','Rome',0.13);
    
Select * from Salesman;

create table Customer (
	Customer_id int not null ,
    Customer_Name varchar(50) not null,
    city varchar(100) ,
    Grade int,
    Salesman_id int,
    Primary Key (Customer_id),
    foreign key (Salesman_id) references Salesman (Salesman_id) ON DELETE CASCADE);
    
Insert into Customer(Customer_id, Customer_Name, City, Grade, Salesman_id) values 
	(3002,'Nick Rimando','New York',100,5001),
    (3005,'Graham Zusi','California',200,5002),
    (3001,'Brad Guzan','London',null,null),
    (3004,'Fabian Johns','Paris',300,5006),
    (3007,'Brad Devis','New York',200,5001),
    (3009,'Geoff Camero','Berlin',100,null),
    (3008,'Julian Green','London',300,5002),
    (3003,'Jozy Altidor','Moscow',200,5007);
Select * from Customer;

create table Orders (
	Order_no int not null ,
    Purchase_Amt float not null,
    Order_Date Date ,
    Customer_id int,
    Salesman_id int,
    Primary Key (Order_no),
    foreign key (Salesman_id) references Salesman (Salesman_id) ON DELETE CASCADE,
    foreign key (Customer_id) references Customer (Customer_id) ON DELETE CASCADE);
    
Insert into Orders(Order_no, Purchase_Amt, Order_Date, Customer_id, Salesman_id) values 
	(70001,150.5,'16-08-05',3005,5002),
	(70009,270.65,'16-08-10',3001,null),
	(70002,65.26,'16-08-05',3002,5001),
	(70004,110.5,'16-08-17',3009,null),	
    (70007,948.5,'16-08-10',3005,5002),
	(70005,2400.6,'16-08-27',3007,5001),
	(70008,5760,'16-08-10',3002,5001),	
    (70010,1983.43,'16-08-10',3004,5006),
	(70003,2480.4,'16-08-10',3009,null),
	(70012,250.45,'16-08-27',3008,5002),
	(70011,75.29,'16-08-17',3003,5007);    
Select * from Orders;



-- Query1 :

	select name,Comminsion from Salesman;
-- Query2 :
	select Salesman_id from Salesman;
    
-- Query3 :
	select name,city from Salesman where city='Paris';
    
-- Query4 :
	select grade from Customer where grade='200';

-- Query5 :
	select Order_no, Order_Date, Purchase_Amt from Orders where Salesman_id='5001';
    
-- Query11 :
	select * from Customer where grade>100 or city='New York';
    
-- Query12 :
	select * from Salesman where comminsion between 0.12 and 0.14;
    
-- Query13 :
	select * from Customer where Customer_name like '%n';    

-- Query14 :
	select * from Salesman where name like 'n__i%';
    
-- Query15 :
	select * from Customer where grade is null;    

-- Query16 :
	select SUM(purchase_amt) from Orders;    
    
-- Query17 :
	select count(*) from Orders;