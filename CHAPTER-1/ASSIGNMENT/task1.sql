CREATE DATABASE user_db;
USE user_db;
CREATE TABLE users(
id serial primary key,
name varchar(100),
email varchar(100) unique
);