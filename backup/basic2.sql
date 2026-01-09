create table volunteer(
ID int not null auto_increment,
fName varchar(50),
lName varchar(50),
userName varchar(50),
address varchar(150),
contact varchar(15),
email varchar(50),
gender varchar(10),
image varchar(100),
education varchar(50),
distance numeric(50),
password varchar(50),
constraint pk_volunteer primary key(ID,userName)
);
alter table volunteer 
add column contribution varchar(200);