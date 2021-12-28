drop database if exists sortingHat;
create database sortingHat;

use sortingHat;
 
 
create table registration(
user_id int auto_increment,
firstname varchar (100)not null,
lastname varchar (100)not null,
gender varchar (100) not null,
househint varchar (100) not null,
primary key(user_id)
);

create table houseJoinUser(
house_id int not null,
user_id int not null
);


create table houses(
house_id int not null auto_increment,
fullname varchar (100) not null,
housename varchar (100)not null,
primary key(house_id)
);

SELECT * FROM registration
INNER JOIN  houseJoinUser
ON registration.user_id= houseJoinUser.user_id
INNER JOIN houses
ON houses.house_id = houseJoinUser.house_id;







