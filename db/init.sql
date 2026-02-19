CREATE DATABASE IF NOT EXISTS onlinebookstore;

USE onlinebookstore;

CREATE TABLE IF NOT EXISTS books(
barcode varchar(100) primary key,
name varchar(100),
author varchar(100),
price int,
quantity int
);

CREATE TABLE IF NOT EXISTS users(
username varchar(100) primary key,
password varchar(100),
firstname varchar(100),
lastname varchar(100),
address text,
phone varchar(100),
mailid varchar(100),
usertype int
);

INSERT INTO books VALUES('10101','Programming in C','James k Wick',500,5);
INSERT INTO books VALUES('10102','Learn Java','Scott Mayers',150,13);
INSERT INTO books VALUES('10103','Database Knowledge','Charles Pettzoid',124,360);
INSERT INTO books VALUES('10104','Let us c++','Steve Macclen',90,111);
INSERT INTO books VALUES('10105','Success Key','Shashi Raj',5000,15);

INSERT INTO users VALUES('User','Password','First','User','My Home','42502216225','User@gmail.com',2);
INSERT INTO users VALUES('Admin','Admin','Mr.','Admin','Haldia WB','9584552224521','admin@gmail.com',1);
INSERT INTO users VALUES('shashi','shashi','Shashi','Raj','Bihar','1236547089','shashi@gmail.com',2);


