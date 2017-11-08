CREATE DATABASE collection;

\c collection

CREATE TABLE books(
	id SERIAL PRIMARY KEY,
	title VARCHAR(50),
	author VARCHAR(50),
	genre VARCHAR(50),
	published INT
);