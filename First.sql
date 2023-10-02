CREATE DATABASE details;
USE details;
CREATE TABLE Worker(
Worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Salary INT NOT NULL,
Join_Date DATE
);
ALTER TABLE Worker ADD Department VARCHAR(60);
INSERT INTO Worker 
	(Worker_id, First_Name, Last_Name, Salary,Department) VALUES
		(001,'Mia','Khalifa',1000000,'Actress'),
		(002,'Alexis','Faxx',1000000,'Actress'),
		(003,'Denny','Deniel',1000000,'Actress'),
		(004,'Alina','Rai',1000000,'Actress'),
		(005,'Diamond','Jackson',1000000,'Actress');

CREATE TABLE Bonus (
	Worker_REF_id INT,
    Bonus_Amount INT,
    Bonus_Date datetime,
    foreign key (Worker_Ref_id) references Worker(Worker_id) ON DELETE CASCADE 
    );

INSERT INTO Bonus
	(Worker_Ref_id, Bonus_Amount, Bonus_Date) values 
		(001,6000,'14-02-24'),
        (002,6000,'14-02-24'),
        (003,6000,'14-02-24'),
        (004,6000,'14-02-24');
        
CREATE TABLE Title(
	Worker_REF_id INT,
    Worker_TITLE INT,
    Affected_from datetime,
    foreign key (Worker_Ref_id) references Worker(Worker_id) ON DELETE CASCADE 
    );
    
    
INSERT INTO Title
	(Worker_Ref_id, Worker_TITLE, Affected_from) values 
		(001,6000,'14-02-24'),
        (002,6000,'14-02-24'),
        (002,6000,'14-02-24'),
        (003,6000,'14-02-24'),
        (004,6000,'14-02-24');
        
SELECT * FROM WORKER;

SELECT * FROM Title;

SELECT * FROM BONUS;

SELECT affected_from FROM TITLE;

SELECT Worker_Title FROM TITLE where Worker_Title=6000;