# -Q1 Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table.
# Q2 2- Write a SQL statement to create the duplicate of the countries table named country_new with all structure and data.

CREATE DATABASE COUNTRY;
SHOW DATABASES;
USE COUNTRY;


CREATE TABLE  Countries(
country_id VARCHAR(2) NOT NULL PRIMARY KEY,
country_name VARCHAR(40),
region_id decimal(10,0) 
);

SELECT * FROM countries
WHERE country_name IN ('india','china','italy');


CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;


INSERT INTO countries(country_id,country_name,region_id)
VALUES (101,'india', 501),
(103,'italy',456),
(105,'china',234),
(106,'butan',678),
(107,'england',789);







