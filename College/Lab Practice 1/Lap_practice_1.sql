Create database Lab;
use lab;
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


    
	