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


--feat/create-table-doctors
create table doctors(
doctorid int primary key,
dfirstname varchar(50),
dlastname varchar(50),
speacialty varchar(100),
phone varchar(15),
email varchar(100)
);

--CREATE TABLE MEDICALRECORDS
create table medicalrecords(
recordid int primary key,
animalid int not null,
foreign key (animalid) references animals (animalid),
recorddate timestamp,
doctorid int not null,
foreign key (doctorid) references doctors (doctorid),
diagnosis text,
prescription text,
notes text
); 

--feat/insert-10-rows-owners
INSERT INTO owners (owner_id, ofirstname, olastname, address, phone, email)
VALUES
    (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
    (2, 'Maria', 'Santos', '456 Elm St, Quezon City', '987-654-3210', 'maria@example.com'),
    (3, 'Antonio', 'Gonzales', '789 Oak St, Cebu', '555-123-4567', 'antonio@example.com'),
    (4, 'Elena', 'Rodriguez', '345 Pine St, Davao', '777-888-9999', 'elena@example.com'),
    (5, 'Ricardo', 'Lim', '987 Cedar St, Makati', '222-333-4444', 'ricardo@example.com'),
    (6, 'Isabel', 'Reyes', '111 Acacia St, Pasig', '999-000-1111', 'isabel@example.com'),
    (7, 'Luis', 'Torres', '555 Maple St, Mandaluyong', '123-555-7777', 'luis@example.com'),
    (8, 'Carmen', 'Fernandez', '222 Birch St, Taguig', '333-222-1111', 'carmen@example.com'),
    (9, 'Pedro', 'Santillan', '888 Spruce St, Bacolod', '888-777-6666', 'pedro@example.com'),
    (10, 'Sofia', 'Villanueva', '777 Walnut St, Iloilo', '111-999-3333', 'sofia@example.com');

  -- feat/insert-10-rows-animals
INSERT INTO animals (animalid,name, species, breed, dateofbirth, gender, color, owner_id)
VALUES
    (1,'Fido', 'Dog', 'Golden Retriever', '2018-03-15', 'Male', 'Golden', 1),
    (2,'Whiskers', 'Cat', 'Siamese', '2019-07-20', 'Female', 'Cream', 2),
    (3,'Rocky', 'Dog', 'German Shepherd', '2017-05-10', 'Male', 'Black and Tan', 3),
    (4,'Fluffy', 'Cat', 'Persian', '2020-01-30', 'Male', 'White', 4),
    (5,'Luna', 'Dog', 'Labrador Retriever', '2019-11-25', 'Female', 'Yellow', 5),
    (6, 'Mochi', 'Cat', 'Maine Coon', '2018-09-12', 'Male', 'Brown Tabby', 6),
    (7,'Bella', 'Dog', 'Poodle', '2020-04-05', 'Female', 'White', 7),
    (8,'Simba', 'Cat', 'Bengal', '2018-06-18', 'Male', 'Spotted Rosetted', 8),
    (9,'Max', 'Dog', 'Dachshund', '2020-07-14', 'Male', 'Black and Tan', 9),
    (10,'Cleo', 'Cat', 'Ragdoll', '2019-12-22', 'Female', 'Seal Point', 10);

    -- Insert the data
INSERT INTO appointments (apointmentid,animalid, appointdate, reason)
VALUES
    (1,1, '2023-01-05', 'Annual check-up'),
    (2,2, '2023-01-10', 'Vaccination'),
    (3,3, '2023-02-02', 'Injury assessment'),
    (4,4, '2023-02-15', 'Dental cleaning'),
    (5,5, '2023-03-05', 'Skin condition'),
    (6,6, '2023-03-10', 'Check for fleas'),
    (7,7, '2023-04-12', 'Vaccination'),
    (8,8, '2023-04-18', 'Spaying/neutering'),
    (9,9, '2023-05-02', 'Allergy treatment'),
    (10,10, '2023-05-20', 'Eye infection');