create database ngoproject;
create table NGO(
ID int not null auto_increment,
NgoName varchar(150),
userName varchar(100),
location varchar(150),
contact varchar(15),
email varchar(50),
image varchar(200),
descr varchar(250),
achievement varchar(200),
password varchar(100),
constraint PK_NGO primary key (ID,userName)
);
create table volunteer(
ID int NOT NULL auto_increment,
name varchar(100),
userName varchar(150),
address varchar(200),
contact varchar(15),
email varchar(50),
image varchar(200),
contribution varchar(250),
password varchar(100),
constraint PK_Volunteer primary key(ID,userName)
);
Alter table ngoproject.ngo 
add column donationType varchar(100) not null;

