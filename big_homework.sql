CREATE DATABASE IF NOT EXISTS mn_db_100;
CREATE DATABASE IF NOT EXISTS test_dbase;
CREATE DATABASE IF NOT EXISTS ուժեղբազա;
CREATE DATABASE IF NOT EXISTS kuku24;

use mn_db_100;

CREATE TABLE IF NOT EXISTS user (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
phone VARCHAR(70) NULL,
age TINYINT(80) UNSIGNED NOT NULL,
gender ENUM('male', 'female')
);

CREATE TABLE select_table SELECT * FROM user;

CREATE TABLE like_table LIKE user;

CREATE TEMPORARY TABLE IF NOT EXISTS temp_user (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
phone VARCHAR(70) NULL,
age TINYINT(80) UNSIGNED NOT NULL,
gender ENUM('male', 'female')
);
use kuku24;

CREATE TABLE IF NOT EXISTS goods (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
amount INT UNSIGNED NULL,
price INT UNSIGNED NOT NULL,
description VARCHAR(500) NULL,
likes INT NOT NULL,
INDEX (price)
);

CREATE INDEX `ixname` ON goods (name);
ALTER TABLE goods ADD INDEX (amount);

DROP DATABASE IF EXISTS test_dbase;

CREATE DATABASE main_big_shop;

use main_big_shop;

CREATE TABLE IF NOT EXISTS user1 SELECT * FROM mn_db_100.user;
CREATE TABLE IF NOT EXISTS select_table1 SELECT * FROM mn_db_100.select_table;
CREATE TABLE IF NOT EXISTS like_table1 SELECT * FROM mn_db_100.like_table;
CREATE TABLE IF NOT EXISTS temp_user1 SELECT * FROM mn_db_100.temp_user;

CREATE TABLE IF NOT EXISTS orders (
id INT AUTO_INCREMENT PRIMARY KEY,
good_name VARCHAR(50) NOT NULL,
address VARCHAR(255) NOT NULL,
customerID INT,
FOREIGN KEY(customerID) REFERENCES customer(id)
);

CREATE TABLE IF NOT EXISTS customer (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
gender ENUM('male', 'female')
);


INSERT INTO orders VALUES (1, 'Name1', "Address1", 1);
INSERT INTO orders VALUES (2, 'Name2', "Address2", 1);
INSERT INTO orders VALUES (3, 'Name3', "Address3", 3);
INSERT INTO orders VALUES (4, 'Name4', "Address4", 2);

INSERT INTO customer VALUES (1, 'Name1', 'male');
INSERT INTO customer VALUES (2, 'Name2', 'female');
INSERT INTO customer VALUES (3, 'Name3', 'female');
INSERT INTO customer VALUES (4, 'Name3', 'male');