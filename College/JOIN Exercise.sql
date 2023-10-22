create database dataset1;
show databases;
use dataset1;
create table author ( id int , name varchar(50),birth_year int, death_year int );
insert into author( id , name ,birth_year, death_year ) values
	(01,'Marcella Cole',1983,null),
    (02,'Lisa Mullins',1891,1950),
    (03,'Dennis Strokes',1935,1994),
    (04,'Randolph Vasquez',1957,2004),
    (05,'Daniel Branson',1965,1990);
create table book ( id int , author_id int,title varchar(50), publish_year int,publishing_house varchar(50),rating float );
insert into book(id,author_id,title,publish_year,publishing_house,rating) values
	(1,null,'Souless Girl',2008,'Golden Albaros',4.3),
    (2,null,'Weak Heart',1980,'Diarmud Inc.',3.8),
    (3,4,'Faith of Light',1995,'White cloud Press',4.3),
    (4,null,'Memory of Hope',2000,'Rutis Enterprises',2.7),
    (5,6,'Warrior of Wind',2005,'Maverick',4.6);
create table adaptation ( book_id int , type varchar(50),title varchar(100), release_year int,rating float );
insert into adaptation(book_id  , type ,title , release_year ,rating ) values
	(1,'movie','Gone with the Wolves:The Begining',2008,3),
    (3,'movie','Companions of Tommorow',2001,4.2),
    (5,'movie','Homeless Warrior',2008,4),
    (2,'movie','Blacksmith with Silver',2014,4.3),
    (4,'movie','Patrons and Bearers',2004,3.2);

create table book_review ( book_id int , review varchar(50),author varchar(50));
alter table book_review modify column review varchar(250);
insert into book_review ( book_id , review ,author) values
	(1,'An incredible book' ,"Sylvia Jones"),
    (1 ,'Great, although it has some flaws' ,'Jessica Parker'),
    (2,'Dennis Stokes takes the reader for aride full of emotions',' Thomas Green'),
    (3 ,'Incredible craftsmanship of the author' ,'Martin Freeman'),
    (4 ,'Not the best book by this author ','Jude Falth'),
    (5 ,'Claudia Johnson at her best!', 'Joe Marqiz'),
    (6 ,'I cannot recall more captivating plot ','Alexander Durham');
show tables;
select * from author;
select * from book;
select * from adaptation;
select * from book_review;

alter table author add primary key(id);
alter table book add primary key(id);
alter table adaptation add primary key(book_id);
alter table book_review add primary key (book_id,review);