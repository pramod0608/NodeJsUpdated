CREATE TABLE admin (id int auto_increment primary key,email varchar(255),password varchar(255));

CREATE TABLE category(name varchar(255));

INSERT INTO admin VALUES (1,"admin@gmail.com", "admin");


create table employee (
id int auto_increment primary key,
name varchar(100),
email varchar(100),
password varchar(1000),
address varchar(2000),
salery int,
category_id varchar(100),
image varchar(2000)
);
