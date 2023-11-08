create database Veterinary Database;

#feat/create-table-owners
create table owners (
    owner_id int not null primary key,
    ofirstname varchar(50) ,
    olastname varchar(50) ,
    address varchar(50) ,
    phone varchar(50) ,
    email varchar(100)
 );