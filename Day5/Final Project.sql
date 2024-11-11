create database HospitalDB;
use HospitalDB;

create table Patients(
P_id int  primary key,
Name varchar(250),
DOB Date,
Gender char,
Blood_group varchar(60)

);
alter table Patients
add Address varchar(250);

create table PatientEmail(
P_id int,
Email varchar(100),
primary key(P_id ,Email),
foreign key(P_id) references Patients(P_id)
);

create table PatientMobile(
P_id int,
Mobile varchar(15),
primary key(P_id ,Mobile),
foreign key(P_id) references Patients(P_id)
);

create table Admin(
A_id int  primary key,
Name varchar(250),
DOB Date,
Gender char,
Address varchar(250)
);

create table AdminEmail(
A_id int,
Email varchar(100),
primary key(A_id ,Email),
foreign key(A_id) references Admin(A_id)
);

create table AdminMobile(
A_id int,
Mobile varchar(15),
primary key(A_id ,Mobile),
foreign key(A_id) references Admin(A_id)
);

create table Bill(
BillNO int primary key,
Date Date,
Amount decimal,
Time time,
P_id int,
A_id int,
foreign key(P_id) references Patients(P_id),
foreign key(A_id) references Admin(A_id)
);

create table Doctors(
D_id int  primary key,
Name varchar(250),
DOB Date,
Age int,
Gender char,
Experience varchar(max),
Specialization varchar(100),
A_id int,
foreign key(A_id) references Admin(A_id)
);

create table DoctorEmail(
D_id int,
Email varchar(100),
primary key(D_id ,Email),
foreign key(D_id) references Doctors(D_id)
);

create table DoctorMobile(
D_id int,
Mobile varchar(15),
primary key(D_id ,Mobile),
foreign key(D_id) references Doctors(D_id)
);

create table DoctorLanguage(
D_id int,
Language varchar(100),
primary key(D_id ,Language),
foreign key(D_id) references Doctors(D_id)
);

create table DoctorSchedule(
D_id int,
Schedule varchar(200),
primary key(D_id ,Schedule),
foreign key(D_id) references Doctors(D_id)
);

create table Prescription(
Prescription_id int primary key,
Remark varchar(225),
Medicine varchar(max),
Advice varchar(225),
D_id int,
foreign key(D_id) references Doctors(D_id)
);

create table PatientPrescription(
P_id int,
Prescription_id int,
primary key(P_id ,Prescription_id),
foreign key(P_id) references Patients(P_id),
foreign key(Prescription_id) references Prescription(Prescription_id)
);

create table Appointment(
Appointment_id int primary key,
Time time,
Date Date,
Specialization varchar(100),
Consultant_fee decimal,
D_id int,
P_id int,
foreign key(P_id) references Patients(P_id),
foreign key(D_id) references Doctors(D_id)
);