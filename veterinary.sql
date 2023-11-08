create database Veterinary Database;

--feat/create-table-owners
create table owners (
    owner_id int not null primary key,
    ofirstname varchar(50) ,
    olastname varchar(50) ,
    address varchar(50) ,
    phone varchar(50) ,
    email varchar(100)
 );

--feat/create-table-animals
CREATE TABLE animals (
animalid int primary key,
name varchar(50),
species varchar(50),
breed varchar(50),
dateofbirth date,
gender varchar(10),
color varchar(50),
owner_id int, 
foreign key (owner_id) references owners (owner_id)  
);

--feat/create-table-appointments
create table appointments (
appointid int  NOT NULL primary key,
animalid int,
appointdate date,
reason varchar(255), 
foreign key (animalid) references animals (animalid)
);

--/create-table-invoices
CREATE TABLE invoices(
    invoiceid INT NOT NULL PRIMARY KEY,
    appointid INT NOT NULL,
    FOREIGN KEY(appointid) REFERENCES appointments(appointid),
	totalamount NUMERIC(10,2),
     paymentdate TIME
    );
