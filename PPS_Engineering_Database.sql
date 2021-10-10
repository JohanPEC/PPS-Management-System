CREATE DATABASE PPS_Database;

CREATE TABLE EMPLOYEE (
Employee_ID char(13) NOT NULL,
FirstName varchar(55) NOT NULL,
LastName varchar(55) NOT NULL,
Username char(10) NOT NULL,
Password char(10) NOT NULL,
PRIMARY KEY (Employee_ID)
);

CREATE TABLE CLIENT (
Client_ID char(13) NOT NULL,
FirstName varchar(55) NOT NULL,
LastName varchar(55) NOT NULL,
Telephone_Number char(10) NOT NULL,
PRIMARY KEY (Client_ID)
);

CREATE TABLE COMPANY (
Company_Name varchar(55) NOT NULL,
Company_Address varchar(55) NOT NULL,
PRIMARY KEY (Company_Name)
);

CREATE TABLE PHASE (
Project_ID int NOT NULL,
Project_Phase varchar(35),
PRIMARY KEY (Project_ID)
);

CREATE TABLE PROJECT (
Project_ID int NOT NULL,
Employee_ID char(13), 
Client_ID char(13), 
Company_Name varchar(55) NOT NULL, 
Project_Phase varchar(35),
Project_Date date,
Project_Price money,
PRIMARY KEY (Project_ID),
FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID),
FOREIGN KEY (Client_ID) REFERENCES CLIENT(Client_ID),
FOREIGN KEY (Company_Name) REFERENCES COMPANY(Company_Name)
);