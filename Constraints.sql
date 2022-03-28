
---------------------------------------Constraints-------------------------------------------------
create table Person(
PersonID int ,
MobileNo int not null unique,
Name varchar(50),
Age int,
City varchar(20),

-- 3-->PRIMARY KEY
constraint PK_Person primary key(PersonID),




);


--Alter change in 
alter table Person add State Varchar(20);
alter table Person alter column State varchar(30);


-- 1-->Not NULL
alter table Person
alter column Age int not null;

-- 2-->UNIQUE
alter table Person
add unique(PersonId)

--Directly apply unique constraint on multiple column
alter table Person 
add constraint unique_Person unique(PersonID,MobileNo);

--remove contraint
alter table Person
drop constraint unique_Person;

-- 3-->PRIMARY KEY
alter table Person
add constraint PK_Person primary key(PersonID);

-- 4-->FOREGIN KEY
create table Order(
OrderID int,
OrderNo int,
PersonID int,
constraint PK_Order primary key(OrderID) ,
constraint FK_Order foreign key(PersonID) references Person(PersonID)
);



select *from Person