create database city_hospital;
use city_hospital;

create table Patients 
(PatientID			 int, 
 PatientName		 varchar(50),
 Age				 int,
 Gender				 enum('Male','Female'),
 AdmissionDate		 date);

alter table Patients
add column DoctorAssigned varchar(50);

select * from Patients;
drop database city_hospital;
create database city_hospital;
use city_hospital;

create table Patients 
(PatientID			 int, 
 PatientName		 varchar(50),
 Age				 int,
 Gender				 enum('Male','Female'),
 AdmissionDate		 date);
select * from Patients;