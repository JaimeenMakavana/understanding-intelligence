-- one to one---

-- -----one to one ---
CREATE database person;
USE person;

CREATE TABLE Person(
person_id INT PRIMARY KEY,
name VARCHAR(100)
);

CREATE TABLE Passport(
passport_id int PRIMARY KEY,
person_id INT unique,
passport_number VARCHAR(50),
FOREIGN KEY (person_id) references Person(person_id)
);

INSERT INTO person VALUES (1,"jaimeen");
SELECT * FROM person;
INSERT INTO passport values (101,1,'IND1234567');

SELECT p.name , ps.passport_number
FROM person p
JOIN Passport ps ON p.person_id = ps.person_id;

CREATE TABLE Student (
 student_id INT PRIMARY KEY,
 name VARCHAR(100)
 );
 
 CREATE TABLE ReportCard(
  report_id INT PRIMARY KEY,
  student_id INT UNIQUE,
  gpa DECIMAL(3,2),
  foreign key (student_id) references Student(student_id)
);

CREATE TABLE Patiend(
 patient_id INT PRIMARY KEY,
 name VARCHAR(100)
);

CREATE TABLE MedicalRecord(
    record_id INT PRIMARY KEY,
    patient_id INT unique,
    diagnosis TEXT,
    foreign key (patient_id) references Patiend(patient_id)
);

CREATE TABLE Employee(
   emp_id INT PRIMARY KEY,
   name varchar(100)
);

create table Workstation(
  ws_id int primary key,
  emp_id int unique,
  location varchar(100),
  foreign key (emp_id) references Employee(emp_id)
);

create table Country(
  country_id int primary key,
  name varchar(100)
  );

alter table Country 
change flag_id country_id varchar(100);

create table Flag(
  id int primary key,
  country_id int unique,
  image_url varchar(255),
  foreign key (country_id) references Country(country_id)
);



	
